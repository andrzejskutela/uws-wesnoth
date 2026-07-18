local generate_conquest_events = {
	["diff_1"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 4, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 11, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 12, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 15, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 17, ['e'] = 'set_village_income', ['new_income'] = 4 },
		{ ['turn'] = 18, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 19, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 21, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 23, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 24, ['e'] = 'set_village_income', ['new_income'] = 5 },
	},
	["diff_2"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 8, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 25 },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 14, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,2' },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 4 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 18, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 19, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 20, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 23, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,3,3' },
		{ ['turn'] = 24, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 26, ['e'] = 'generate_strong_spawn', ['value'] = 30 },
		{ ['turn'] = 27, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
	},
	["diff_3"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 2, ['e'] = 'generate_strong_spawn', ['value'] = 20 },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 7, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 7, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 11, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 16, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 16, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 19, ['e'] = 'schedule_weather_change', ['severity'] = 3 },
		{ ['turn'] = 20, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 22, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,3,3' },
		{ ['turn'] = 24, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 28, ['e'] = 'set_village_income', ['new_income'] = 7 },
		{ ['turn'] = 28, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 28, ['e'] = 'set_recruit_list', ['r_lvls'] = '3,3,3,3' },
		{ ['turn'] = 28, ['e'] = 'generate_strong_spawn', ['value'] = 70 },
	},
	["diff_4"] = {
		{ ['turn'] = 1, ['e'] = 'set_recruit_list', ['r_lvls'] = '0,0,0' },
		{ ['turn'] = 2, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 3, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,1,1' },
		{ ['turn'] = 6, ['e'] = 'schedule_weather_change', ['severity'] = 2 },
		{ ['turn'] = 7, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 9, ['e'] = 'generate_strong_spawn', ['value'] = 40 },
		{ ['turn'] = 11, ['e'] = 'set_recruit_list', ['r_lvls'] = '1,1,2,2' },
		{ ['turn'] = 12, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 14, ['e'] = 'set_village_income', ['new_income'] = 5 },
		{ ['turn'] = 16, ['e'] = 'generate_strong_spawn', ['value'] = 50 },
		{ ['turn'] = 16, ['e'] = 'set_random_trained_module', ['strength'] = 2 },
		{ ['turn'] = 17, ['e'] = 'set_recruit_list', ['r_lvls'] = '2,2,2,2' },
		{ ['turn'] = 17, ['e'] = 'schedule_weather_change', ['severity'] = 3 },
		{ ['turn'] = 19, ['e'] = 'generate_strong_spawn', ['value'] = 60 },
		{ ['turn'] = 22, ['e'] = 'set_recruit_list', ['r_lvls'] = '3,3,3,3' },
		{ ['turn'] = 23, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 24, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 25, ['e'] = 'set_village_income', ['new_income'] = 7 },
		{ ['turn'] = 25, ['e'] = 'set_random_trained_module', ['strength'] = 1 },
		{ ['turn'] = 26, ['e'] = 'schedule_weather_change', ['severity'] = 1 },
		{ ['turn'] = 27, ['e'] = 'set_recruit_list', ['r_lvls'] = '4,4,5,5' },
		{ ['turn'] = 28, ['e'] = 'generate_strong_spawn', ['value'] = 70 },
		{ ['turn'] = 29, ['e'] = 'set_village_income', ['new_income'] = 9 },
	},
}

function wesnoth.wml_actions.qquws_generate_conquest_event_list(cfg)
	local difficulty = cfg.difficulty
	wml.array_access.set("conquest_events", generate_conquest_events['diff_' .. tostring(difficulty)])
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


-- Weather change --------------------------------------------------------------
-- schedule_weather_change picks a random weather pattern and rewrites part of the
-- OPEN terrain on the map. 'severity' (1-5) controls how many tiles per 100 are
-- affected. Only plain, overlay-free hexes are touched, so villages, forests,
-- castles and keeps are always left intact.

-- tiles-per-100 changed, indexed by severity (1..5)
local weather_severity_pct = { 8, 16, 25, 40, 100 }

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
	pattern = pattern or weather_patterns[mathx.random(1, #weather_patterns)]

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

local function describe_conquest_event(e)
	local t = e.e
	if t == 'set_recruit_list' then
		return "enemies recruit " .. tostring(e.r_lvls)
	elseif t == 'set_village_income' then
		return "enemy village income " .. tostring(e.new_income)
	elseif t == 'schedule_weather_change' then
		return "a weather change (severity " .. tostring(e.severity) .. ")"
	elseif t == 'generate_strong_spawn' then
		return "stronger enemy recruits (+" .. tostring(e.value) .. ")"
	elseif t == 'set_random_trained_module' then
		return "new training (tier " .. tostring(e.strength) .. ")"
	end
	return nil
end

function wesnoth.wml_actions.qquws_announce_conquest_events(cfg)
	local turn = tonumber(cfg.turn) or 0
	local events = wml.array_access.get("conquest_events")

	local function collect(target)
		local descs = {}
		for i,e in ipairs(events) do
			if tonumber(e.turn) == target then
				local d = describe_conquest_event(e)
				if d then descs[#descs + 1] = d end
			end
		end
		return descs
	end

	local lines = {}
	local now = collect(turn)
	if #now > 0 then
		lines[#lines + 1] = "This turn: " .. table.concat(now, "; ") .. "."
	end
	local soon = collect(turn + 1)
	if #soon > 0 then
		lines[#lines + 1] = "Next turn: " .. table.concat(soon, "; ") .. "."
	end

	if #lines > 0 then
		wesnoth.wml_actions.print {
			text = table.concat(lines, "\n"),
			size = 18,
			duration = 6000,
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


-- set_random_trained_module is handled by the mode-agnostic training engine in
-- lua/training.lua (qquws_add_random_training) + the QQUWS_TRAINING_MODULES event.
--
-- todo
-- village-based training: some villages offer player-chosen training for gold when
-- captured, reusing the training engine (qquws_add_training_module) - to be specced.
