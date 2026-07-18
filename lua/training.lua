-- Training modules ------------------------------------------------------------
-- Per-side, permanent training bonuses that accumulate across several dimensions
-- (hp, melee/ranged damage, physical/magical resistance, movement, defense) and
-- are applied as a single "trained" trait to every newly placed unit of that side.
--
-- Mode-agnostic: any scenario that loads this file and includes the
-- QQUWS_TRAINING_MODULES macro (the "unit placed" handler) gets the behaviour.
-- In conquest, set_random_trained_module grants random modules to the AI; the
-- upcoming village feature will grant player-chosen modules via the same engine.

local TRAINING_DIMS = { 'hp', 'melee_dmg', 'ranged_dmg', 'phys_res', 'mag_res', 'mp', 'defense' }

-- The catalogue of training options. Each grants one or more dimension bonuses.
local training_modules = {
	{ hp = 10 },
	{ melee_dmg = 1, ranged_dmg = 1 },
	{ melee_dmg = 2 },
	{ ranged_dmg = 2 },
	{ mp = 1 },
	{ defense = 5 },
	{ phys_res = 10 },
	{ mag_res = 10 },
}

local function training_var(side, dim)
	return 'uws_training_' .. side .. '.' .. dim
end

local function get_training(side, dim)
	return tonumber(wml.variables[training_var(side, dim)]) or 0
end

local function add_training(side, dim, amount)
	wml.variables[training_var(side, dim)] = get_training(side, dim) + amount
end

local function apply_module(side, m)
	for _,dim in ipairs(TRAINING_DIMS) do
		if m[dim] then
			add_training(side, dim, m[dim])
		end
	end
end

-- set_random_trained_module: grant 'strength' random training modules to every
-- side listed in cfg.side (comma-separated). Each module is rolled independently.
function wesnoth.wml_actions.qquws_add_random_training(cfg)
	local strength = tonumber(cfg.strength) or 1
	for s in string.gmatch(tostring(cfg.side or ''), '([^,]+)') do
		local side = tonumber(s)
		if side then
			for i = 1, strength do
				apply_module(side, training_modules[mathx.random(1, #training_modules)])
			end
		end
	end
end

-- Grant one specific training module (1-based index into training_modules) to a
-- single side. Foundation for the upcoming village-based, player-chosen training.
function wesnoth.wml_actions.qquws_add_training_module(cfg)
	local side = tonumber(cfg.side)
	local index = tonumber(cfg.module)
	if side and index and training_modules[index] then
		apply_module(side, training_modules[index])
	end
end

local DIM_SET = {}
for _,d in ipairs(TRAINING_DIMS) do DIM_SET[d] = true end

-- Grant a single dimension bonus (type + value) to a side. Used by the
-- training-grounds object where the amount is authored directly, not rolled.
function wesnoth.wml_actions.qquws_add_training(cfg)
	local side = tonumber(cfg.side)
	local dim = tostring(cfg.type)
	local value = tonumber(cfg.value) or 0
	if side and DIM_SET[dim] and value ~= 0 then
		add_training(side, dim, value)
	end
end

-- Human-readable label for a (type, value) training offer, written to cfg.var.
local TRAINING_LABELS = {
	hp         = function(v) return '+' .. v .. '% max HP' end,
	melee_dmg  = function(v) return '+' .. v .. ' melee damage' end,
	ranged_dmg = function(v) return '+' .. v .. ' ranged damage' end,
	phys_res   = function(v) return '+' .. v .. '% physical resistance' end,
	mag_res    = function(v) return '+' .. v .. '% magical resistance' end,
	mp         = function(v) return '+' .. v .. ' movement' end,
	defense    = function(v) return '+' .. v .. '% defense' end,
}

function wesnoth.wml_actions.qquws_training_label(cfg)
	local f = TRAINING_LABELS[tostring(cfg.type)]
	local value = tonumber(cfg.value) or 0
	wml.variables[cfg.var or 'uwsc_training_label'] = f and f(value) or (tostring(cfg.type) .. ' ' .. value)
end


-- Special village locations ---------------------------------------------------
-- Turn a handful of random villages into interactable "training_module" and
-- "treasure_loc" objects (with flavourful names). Called once at conquest start.

local location_names_training = {
	"Training Ground", "Archery Grounds", "Old Horse Inn", "War College", "Sparring Yard",
	"Sergeant's Camp", "Drill Field", "Fighters' Guild", "Militia Hall", "Veterans' Lodge",
	"Shield Wall Barracks", "The Iron Ring",
}
local location_names_treasure = {
	"Old Ruins", "Smuggler's Cache", "Forgotten Cellar", "Abandoned Mill", "Hermit's Hut",
	"Sunken Crypt", "The Buried Vault", "Robber's Den",
}

-- Single-dimension training offers (type/value/cost) sold at training grounds.
local village_training_offers = {
	{ type = 'hp',         value = 10, cost = 15 },
	{ type = 'hp',         value = 20, cost = 30 },
	{ type = 'melee_dmg',  value = 1,  cost = 15 },
	{ type = 'melee_dmg',  value = 2,  cost = 30 },
	{ type = 'ranged_dmg', value = 1,  cost = 15 },
	{ type = 'ranged_dmg', value = 2,  cost = 30 },
	{ type = 'mp',         value = 1,  cost = 25 },
	{ type = 'defense',    value = 5,  cost = 20 },
	{ type = 'defense',    value = 10, cost = 40 },
	{ type = 'phys_res',   value = 10, cost = 25 },
	{ type = 'mag_res',    value = 10, cost = 25 },
}

local function shuffled_copy(t)
	local c = {}
	for i, v in ipairs(t) do c[i] = v end
	mathx.shuffle(c)
	return c
end

function wesnoth.wml_actions.qquws_place_special_village_locations(cfg)
	local training_count = tonumber(cfg.training_count) or 6
	local treasure_count = tonumber(cfg.treasure_count) or 2
	local training_image = cfg.training_image or 'scenery/tent-shop-weapons.png'
	local treasure_image = cfg.treasure_image or 'items/chest.png'

	local items = wml.array_access.get('scrollable_items')

	-- don't place on units or on tiles that already hold an object
	local blocked = {}
	for _, u in ipairs(wesnoth.get_units {}) do
		blocked[u.x .. ',' .. u.y] = true
	end
	for _, it in ipairs(items) do
		if it.x and it.y then blocked[it.x .. ',' .. it.y] = true end
	end

	local villages = {}
	for _, hex in ipairs(wesnoth.map.find { terrain = '*^V*' }) do
		if not blocked[hex.x .. ',' .. hex.y] then
			villages[#villages + 1] = hex
		end
	end
	mathx.shuffle(villages)

	local tnames = shuffled_copy(location_names_training)
	local rnames = shuffled_copy(location_names_treasure)
	local vi, seq = 0, 0

	for i = 1, training_count do
		vi = vi + 1
		local hex = villages[vi]
		if not hex then break end
		local offer = village_training_offers[mathx.random(1, #village_training_offers)]
		seq = seq + 1
		items[#items + 1] = {
			cat = 'training_module', x = hex.x, y = hex.y, image = training_image,
			name = tnames[((i - 1) % #tnames) + 1], color = '#61ab64', render = true,
			object_id = 'uws_special_loc_' .. seq,
			cost = offer.cost, type = offer.type, value = offer.value,
		}
	end

	for i = 1, treasure_count do
		vi = vi + 1
		local hex = villages[vi]
		if not hex then break end
		seq = seq + 1
		items[#items + 1] = {
			cat = 'treasure_loc', x = hex.x, y = hex.y, image = treasure_image,
			name = rnames[((i - 1) % #rnames) + 1], color = '#ebae2a', render = true,
			object_id = 'uws_special_loc_' .. seq,
		}
	end

	wml.array_access.set('scrollable_items', items)
end

-- Apply a side's accumulated training to a freshly placed unit, as one trait.
function wesnoth.wml_actions.qquws_apply_training_to_unit(cfg)
	local side = tonumber(cfg.side)
	if not side then return end

	local u = wesnoth.get_units { id = cfg.id }[1]
	if not u or u.variables.uws_trained then return end

	local hp     = get_training(side, 'hp')
	local melee  = get_training(side, 'melee_dmg')
	local ranged = get_training(side, 'ranged_dmg')
	local phys   = get_training(side, 'phys_res')
	local mag    = get_training(side, 'mag_res')
	local mp     = get_training(side, 'mp')
	local def    = get_training(side, 'defense')

	if hp == 0 and melee == 0 and ranged == 0 and phys == 0 and mag == 0 and mp == 0 and def == 0 then
		return
	end

	local trait = {
		id = 'uws_training',
		name = "<span color='#e0c060'>trained</span>",
	}
	local parts = {}

	if hp > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'hitpoints', increase = hp .. '%', increase_total = hp .. '%' } }
		parts[#parts + 1] = '+' .. hp .. '% HP'
	end
	if melee > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'attack', range = 'melee', increase_damage = melee } }
		parts[#parts + 1] = '+' .. melee .. ' melee damage'
	end
	if ranged > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'attack', range = 'ranged', increase_damage = ranged } }
		parts[#parts + 1] = '+' .. ranged .. ' ranged damage'
	end
	if mp > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'movement', increase = mp } }
		parts[#parts + 1] = '+' .. mp .. ' movement'
	end
	if phys > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'resistance', replace = false,
			{ 'resistance', { blade = -phys, impact = -phys, pierce = -phys } } } }
		parts[#parts + 1] = '+' .. phys .. '% physical resistance'
	end
	if mag > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'resistance', replace = false,
			{ 'resistance', { arcane = -mag, fire = -mag, cold = -mag } } } }
		parts[#parts + 1] = '+' .. mag .. '% magical resistance'
	end
	if def > 0 then
		trait[#trait + 1] = { 'effect', { apply_to = 'defense', replace = false,
			{ 'defense', {
				flat = -def, frozen = -def, forest = -def, village = -def, swamp_water = -def,
				cave = -def, reef = -def, shallow_water = -def, deep_water = -def, fungus = -def,
				hills = -def, mountains = -def, castle = -def, sand = -def, unwalkable = -def,
			} } } }
		parts[#parts + 1] = '+' .. def .. '% defense'
	end

	trait.description = "Training bonus: " .. table.concat(parts, ", ") .. "."

	wesnoth.wml_actions.modify_unit {
		{ 'filter', { id = cfg.id } },
		{ 'variables', { uws_trained = true } },
		{ 'trait', trait },
	}
end
