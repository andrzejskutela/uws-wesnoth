-- Procedurally builds the conquest event schedule for a given difficulty (1-4).
-- Higher difficulty starts events sooner, repeats them more often, and lets the
-- AI climb to stronger recruit tiers / bigger bonuses. No RNG here, so every
-- client generates the same schedule (safe for multiplayer).
local function generate_conquest_events(difficulty)
	local d = difficulty
	if d < 1 then d = 1 end
	if d > 4 then d = 4 end

	local last_turn = 42
	local events = {}
	local function add(turn, e, extra)
		if turn < 1 or turn > last_turn then return end
		local row = { turn = turn, e = e }
		if extra then
			for k, v in pairs(extra) do row[k] = v end
		end
		events[#events + 1] = row
	end

	-- AI recruit tiers: advance through this progression over the game.
	local recruit_progression = {
		'0,0,0', '1,1,1,0', '1,1,2,2', '2,2,2,2', '2,2,2,3,3', '3,3,3,3', '3,3,4,4', '3,4,4,5',
	}
	local recruit_interval = 7 - d                          -- d1:6 ... d4:3
	local max_tier = math.min(#recruit_progression, 4 + d)  -- d1:5 ... d4:8
	local turn = 1
	for tier = 1, max_tier do
		add(turn, 'set_recruit_list', { r_lvls = recruit_progression[tier] })
		turn = turn + recruit_interval
	end

	-- Village income: periodic RELATIVE increases (handler adds increase_by).
	local income_step = 1 + math.floor(d / 2)   -- d1:1, d2:2, d3:2, d4:3
	local income_interval = 8 - d               -- d1:7 ... d4:4
	turn = 12 - d                               -- d1:11 ... d4:8
	while turn <= last_turn do
		add(turn, 'set_village_income', { increase_by = income_step })
		turn = turn + income_interval
	end

	-- Strong spawns: boost tokens for AI recruit improvements, growing over time.
	local spawn_interval = 10 - d               -- d1:9 ... d4:6
	local spawn_occ = 0
	turn = 10 - 2 * d                           -- d1:8, d2:6, d3:4, d4:2
	if turn < 2 then turn = 2 end
	while turn <= last_turn do
		local value = 30 + 5 * d + spawn_occ * 25
		if value > 200 then value = 200 end
		add(turn, 'generate_strong_spawn', { value = value })
		spawn_occ = spawn_occ + 1
		turn = turn + spawn_interval
	end

	-- Training modules granted to the AI sides.
	local train_strength = 1 + math.floor((d - 1) / 2)  -- d1:1, d2:1, d3:2, d4:2
	local train_interval = 14 - d                       -- d1:13 ... d4:10
	turn = 14 - d                                       -- d1:13 ... d4:10
	while turn <= last_turn do
		add(turn, 'set_random_trained_module', { strength = train_strength })
		turn = turn + train_interval
	end

	-- Weather: periodic, escalating severity.
	local weather_interval = 12 - d             -- d1:11 ... d4:8
	local weather_occ = 0
	turn = 16 - 3 * d                           -- d1:14, d2:12, d3:10, d4:8
	while turn <= last_turn do
		local severity = math.ceil(d / 2) + math.floor(weather_occ / 2)
		if severity > 5 then severity = 5 end
		add(turn, 'schedule_weather_change', { severity = severity })
		weather_occ = weather_occ + 1
		turn = turn + weather_interval
	end

	table.sort(events, function(a, b) return a.turn < b.turn end)
	return events
end

function wesnoth.wml_actions.qquws_generate_conquest_event_list(cfg)
	local difficulty = tonumber(cfg.difficulty) or 1
	wml.array_access.set("conquest_events", generate_conquest_events(difficulty))
end

function wesnoth.wml_actions.qquws_generate_new_recruit_list(cfg)
	local recruit_lvls = cfg.levels
	local list = {}
	local unit_level = 0
	local available_units = {}
	for lvl_str in string.gmatch(recruit_lvls, '([^,]+)') do
		unit_level = tonumber(lvl_str)
		if not available_units[unit_level] then
			available_units[unit_level] = wml.variables['random_pool.level_' .. tostring(unit_level)]
		end
		
		table.insert(list, mathx.random_choice(available_units[unit_level]))
	end
	
	wml.variables['uwsc_recruit_list'] = table.concat(list, ',')
end


-- Sets each listed side's gold to an absolute amount (comma-separated side list).
function wesnoth.wml_actions.qquws_set_side_gold(cfg)
	local gold = tonumber(cfg.gold) or 0
	for s in string.gmatch(tostring(cfg.sides or ''), '([^,]+)') do
		local side = tonumber(s)
		if side and wesnoth.sides[side] then
			wesnoth.sides[side].gold = gold
		end
	end
end

-- Leader buffs: one is rolled per enemy leader, tuned to be sensibly strong.
local leader_buffs = {
	{ var = 'new_unit_bulky_value',      value = 60 },
	{ var = 'new_unit_beefy_value',      value = 40 },
	{ var = 'new_unit_armored_value',    value = 20 },
	{ var = 'new_unit_agile_value',      value = 15 },
	{ var = 'new_unit_aggressive_value', value = 1  },
}
local leader_buff_vars = {
	'new_unit_bulky_value', 'new_unit_beefy_value', 'new_unit_armored_value',
	'new_unit_fast_value', 'new_unit_agile_value', 'new_unit_aggressive_value',
}

-- Advances each enemy leader up its advancement tree to the target level (if it
-- can) and grants it one random strong buff via the standard bonus applicator.
function wesnoth.wml_actions.qquws_upgrade_ai_leaders(cfg)
	local target_level = tonumber(cfg.level) or 4
	local leaders = wesnoth.get_units { side = tostring(cfg.sides or ''), canrecruit = true }

	for _, u in ipairs(leaders) do
		local leader_id = u.id

		-- climb the advancement tree toward the target level
		local guard = 0
		while u.level < target_level and guard < 12 do
			local adv = wesnoth.unit_types[u.type].advances_to
			if not adv or #adv == 0 then break end
			u:transform(adv[mathx.random(1, #adv)])
			guard = guard + 1
		end
		u.hitpoints = u.max_hitpoints

		-- one random strong buff, applied like a spawn/champion bonus
		local b = leader_buffs[mathx.random(1, #leader_buffs)]
		wml.variables['uws_spawn.type'] = u.type
		wml.variables['uws_spawn.final_boss'] = false
		wml.variables['new_unit_spawn_id'] = leader_id
		for _, name in ipairs(leader_buff_vars) do wml.variables[name] = 0 end
		wml.variables['new_unit_spawn_champion'] = ''
		wml.variables['new_unit_spawn_minion'] = ''
		wml.variables['new_unit_spawn_quiet_bonus_id'] = ''
		wml.variables[b.var] = b.value
		wml.fire('fire_event', { name = 'apply_new_unit_bonus' })

		local healed = wesnoth.get_units { id = leader_id }[1]
		if healed then healed.hitpoints = healed.max_hitpoints end
	end
end


-- Weather change --------------------------------------------------------------
-- schedule_weather_change picks a random weather pattern and rewrites part of the
-- OPEN terrain on the map. 'severity' (1-5) controls how many tiles per 100 are
-- affected. Only plain, overlay-free hexes are touched, so villages, forests,
-- castles and keeps are always left intact.

-- tiles-per-100 changed, indexed by severity (1..5)
local weather_severity_pct = { 8, 16, 25, 40, 80 }

-- Each pattern rewrites a set of source terrains into a target terrain.
-- 'scale' (on a pattern or a single rule) shrinks the affected fraction - used to
-- keep destructive terrain (chasms, lava) very limited regardless of severity.
-- 'avoid_units' skips hexes that currently hold a unit (so we never drop a unit
-- into a chasm or lava).
local weather_patterns = {
	{
		id = 'rain', label = "Rain sweeps across the land.",
		rules = {
			{ from = 'Gg,Gs,Gd,Gll', to = 'Ss' },   -- meadows turn to marsh
			{ from = 'Ds,Dd', to = 'Gs' },           -- the rain revives the sands
			{ from = 'Wwf', to = 'Ww' },             -- fords flood
		},
	},
	{
		id = 'drought', label = "A drought parches the land.",
		rules = {
			{ from = 'Ww,Wwg,Wwf', to = 'Ds' },      -- shallow water dries up
			{ from = 'Ss,Sm', to = 'Gd' },           -- swamps dry out
			{ from = 'Gg,Gs', to = 'Gd' },           -- grass withers
			{ from = 'Gd', to = 'Ds' },              -- withered grass turns to sand
		},
	},
	{
		id = 'snow', label = "Snow blankets the land.",
		rules = {
			{ from = 'Gg,Gs,Gd,Gll,Ds,Dd', to = 'Aa' },  -- open ground snowed over
			{ from = 'Hh,Hd', to = 'Ha' },               -- hills become snowy
			{ from = 'Mm', to = 'Ms' },                  -- mountains become snowy
			{ from = 'Ww,Wwg,Wwf', to = 'Ai' },          -- shallow water freezes over
		},
	},
	{
		id = 'sandstorm', label = "A sandstorm buries the land.",
		rules = {
			{ from = 'Gg,Gs,Gd,Gll', to = 'Dd' },    -- grass buried under sand
			{ from = 'Ss,Sm', to = 'Ds' },           -- swamps dry to sand
			{ from = 'Hh', to = 'Hd' },              -- hills become dunes
		},
	},
	{
		id = 'bloom', label = "A sudden bloom greens the land.",
		rules = {
			{ from = 'Ds,Dd', to = 'Gg' },   -- sands bloom into meadow
			{ from = 'Gd', to = 'Gg' },      -- dry grass revives
			{ from = 'Ss,Sm', to = 'Gg' },   -- swamps drain into meadow
		},
	},
	{
		id = 'earthquake', label = "An earthquake tears the land apart.", scale = 0.2,
		rules = {
			{ from = 'Gg,Gs,Gd,Gll,Ds,Dd,Hh,Hd', to = 'Mm' },                    -- ground heaves into rubble
			{ from = 'Mm,Ms', to = 'Qxu', scale = 0.15, avoid_units = true },     -- a few peaks split into chasms
		},
	},
	{
		id = 'volcanic', label = "Volcanic ash smothers the land.", scale = 0.25,
		rules = {
			{ from = 'Gg,Gs,Gd,Gll', to = 'Dd' },                                -- ash smothers the fields
			{ from = 'Mm,Ms', to = 'Qxu', scale = 0.15, avoid_units = true },     -- fissures crack open
			{ from = 'Ss,Sm,Ds', to = 'Qlf', scale = 0.08, avoid_units = true },  -- rare lava pockets
		},
	},
}

local function weather_occupied_set()
	local occ = {}
	for i,u in ipairs(wesnoth.get_units {}) do
		occ[u.x .. ',' .. u.y] = true
	end
	return occ
end

function wesnoth.wml_actions.qquws_apply_weather_change(cfg)
	local severity = tonumber(cfg.severity) or 1
	if severity < 1 then severity = 1 end
	if severity > 5 then severity = 5 end
	local base_pct = weather_severity_pct[severity]

	local pattern
	if cfg.pattern then
		for i,p in ipairs(weather_patterns) do
			if p.id == cfg.pattern then pattern = p break end
		end
	end
	if not pattern then
		-- use the pattern pre-rolled by the turn announcement, if any
		local pending = wml.variables['uwsc_weather_pending']
		if pending and pending ~= '' then
			for i,p in ipairs(weather_patterns) do
				if p.id == pending then pattern = p break end
			end
		end
	end
	pattern = pattern or weather_patterns[mathx.random(1, #weather_patterns)]
	wml.variables['uwsc_weather_pending'] = nil

	local map = wesnoth.current.map
	local occupied = weather_occupied_set()

	-- Resolve every hex to change against the ORIGINAL map first, then apply, so
	-- that one rule's output cannot cascade into a later rule's input this turn.
	local assignments = {}
	for _,rule in ipairs(pattern.rules) do
		local eff_pct = base_pct * (pattern.scale or 1) * (rule.scale or 1)

		local candidates = {}
		for i,hex in ipairs(wesnoth.map.find { terrain = rule.from }) do
			local ter = map[hex]
			-- leave overlays (villages, forests, ...) alone, and keep units out of hazards
			if not string.find(ter, '^', 1, true)
				and (not rule.avoid_units or not occupied[hex.x .. ',' .. hex.y]) then
				candidates[#candidates + 1] = hex
			end
		end

		mathx.shuffle(candidates)
		local n = math.floor(#candidates * eff_pct / 100)
		for i = 1, n do
			assignments[#assignments + 1] = { hex = candidates[i], to = rule.to }
		end
	end

	for _,a in ipairs(assignments) do
		map[a.hex] = a.to
	end
end


-- Turn announcements ----------------------------------------------------------
-- One short, combined [print] per turn: what fires THIS turn, plus a heads-up for
-- what fires NEXT turn. It has to be a single print because the engine only shows
-- one overlay label at a time (a new [print] removes the previous one).

local function describe_conquest_event(e, is_now)
	local t = e.e
	if t == 'set_recruit_list' then
		return "enemies recruit " .. tostring(e.r_lvls)
	elseif t == 'set_village_income' then
		return "enemy village income +" .. tostring(e.increase_by)
	elseif t == 'schedule_weather_change' then
		if is_now then
			-- pre-roll the weather so the announcement shows the real flavour text and
			-- qquws_apply_weather_change applies that very same pattern this turn
			local pattern = weather_patterns[mathx.random(1, #weather_patterns)]
			wml.variables['uwsc_weather_pending'] = pattern.id
			return (pattern.label:gsub('%.$', ''))
		end
		return "a change in the weather (severity " .. tostring(e.severity) .. ")"
	elseif t == 'generate_strong_spawn' then
		return "hardened enemy recruits (+" .. tostring(e.value) .. ")"
	elseif t == 'set_random_trained_module' then
		return "new training (tier " .. tostring(e.strength) .. ")"
	end
	return nil
end

function wesnoth.wml_actions.qquws_announce_conquest_events(cfg)
	local turn = tonumber(cfg.turn) or 0
	local events = wml.array_access.get("conquest_events")

	local function collect(target, is_now)
		local descs = {}
		for i,e in ipairs(events) do
			if tonumber(e.turn) == target then
				local d = describe_conquest_event(e, is_now)
				if d then descs[#descs + 1] = d end
			end
		end
		return descs
	end

	local lines = {}
	-- always collect this turn (so weather is pre-rolled), but don't announce the
	-- current turn on turn 1
	local now = collect(turn, true)
	if turn ~= 1 and #now > 0 then
		lines[#lines + 1] = "This turn: " .. table.concat(now, "; ") .. "."
	end
	local soon = collect(turn + 1, false)
	if #soon > 0 then
		lines[#lines + 1] = "Next turn: " .. table.concat(soon, "; ") .. "."
	end

	if #lines > 0 then
		wesnoth.wml_actions.print {
			text = table.concat(lines, "\n"),
			size = 18,
			duration = 20000,
			color = "255,230,150",
		}
	end
end


-- Strong spawn / recruit improvements -----------------------------------------
-- generate_strong_spawn credits every AI side with 'value' boost tokens. Whenever
-- an AI side recruits a unit, we look at every improvement it can currently
-- afford, roll for each, collect the passing ones, and (if any) apply one at
-- random - spending its cost. Improvements reuse the standard apply_new_unit_bonus
-- effects so a boosted recruit looks and behaves like a boosted spawn.
--
-- 'chance' is a rejection threshold: an affordable improvement enters the pool
-- when random(1..100) > chance, so a LOWER chance value means it appears more often.

local recruit_improvements = {
	{ kind = 'bulky',      value = 40,  cost = 25, chance = 30 },
	{ kind = 'bulky',      value = 75,  cost = 35, chance = 40 },
	{ kind = 'bulky',      value = 100, cost = 45, chance = 30 },
	{ kind = 'bulky',      value = 150, cost = 60, chance = 20 },
	{ kind = 'beefy',      value = 35,  cost = 25, chance = 40 },
	{ kind = 'beefy',      value = 65,  cost = 40, chance = 30 },
	{ kind = 'beefy',      value = 90,  cost = 50, chance = 15 },
	{ kind = 'fast',       value = 1,   cost = 15, chance = 30 },
	{ kind = 'fast',       value = 2,   cost = 20, chance = 50 },
	{ kind = 'fast',       value = 3,   cost = 25, chance = 25 },
	{ kind = 'armored',    value = 15,  cost = 30, chance = 50 },
	{ kind = 'armored',    value = 25,  cost = 40, chance = 40 },
	{ kind = 'armored',    value = 35,  cost = 50, chance = 30 },
	{ kind = 'agile',      value = 5,   cost = 20, chance = 30 },
	{ kind = 'agile',      value = 10,  cost = 30, chance = 30 },
	{ kind = 'agile',      value = 15,  cost = 35, chance = 30 },
	{ kind = 'agile',      value = 20,  cost = 40, chance = 30 },
	{ kind = 'aggressive', value = 1,   cost = 30, chance = 30 },
	{ kind = 'aggressive', value = 2,   cost = 50, chance = 35 },
	{ kind = 'aggressive', value = 3,   cost = 70, chance = 45 },
	{ kind = 'champion',   value = 3,   cost = 60, chance = 50 },
	{ kind = 'champion',   value = 4,   cost = 75, chance = 50 },
	{ kind = 'champion',   value = 5,   cost = 90, chance = 40 },
}

local function get_ai_tokens(side)
	return tonumber(wml.variables['uwsc_ai_tokens_' .. side]) or 0
end

local function set_ai_tokens(side, amount)
	wml.variables['uwsc_ai_tokens_' .. side] = amount
end

-- generate_strong_spawn: hand each AI side 'value' boost tokens
function wesnoth.wml_actions.qquws_add_conquest_tokens(cfg)
	local value = tonumber(cfg.value) or 0
	local ai_sides = tostring(wml.variables['uws_game.ai_sides'] or '')
	for s in string.gmatch(ai_sides, '([^,]+)') do
		local side = tonumber(s)
		if side then
			set_ai_tokens(side, get_ai_tokens(side) + value)
		end
	end
end

-- Rolls a recruit improvement for the given side. Sets uwsc_improvement_kind
-- (empty when nothing was chosen), uwsc_improvement_value and, for champions,
-- uwsc_champion_full_buff. Spends the chosen improvement's cost.
function wesnoth.wml_actions.qquws_roll_recruit_improvement(cfg)
	wml.variables['uwsc_improvement_kind'] = ''
	wml.variables['uwsc_improvement_value'] = 0
	wml.variables['uwsc_champion_full_buff'] = ''

	local side = tonumber(cfg.side)
	if not side then return end

	local tokens = get_ai_tokens(side)
	if tokens <= 0 then return end

	local pool = {}
	for _,imp in ipairs(recruit_improvements) do
		if imp.cost <= tokens and mathx.random(1, 100) > imp.chance then
			pool[#pool + 1] = imp
		end
	end

	if #pool == 0 then return end

	local chosen = pool[mathx.random(1, #pool)]
	set_ai_tokens(side, tokens - chosen.cost)

	wml.variables['uwsc_improvement_kind'] = chosen.kind
	wml.variables['uwsc_improvement_value'] = chosen.value

	if chosen.kind == 'champion' then
		local slots = {}
		for i = 1, chosen.value do slots[i] = 'rand' end
		wml.variables['uwsc_champion_full_buff'] = table.concat(slots, ':')
	end
end
