-- Treasure locations ----------------------------------------------------------
-- Support for the "treasure_loc" object category: entering the marker spawns a
-- random item on a random walkable tile (rendered invisibly, so it's a real hunt)
-- and tells the player its coordinates. Mode-agnostic - the interaction itself
-- lives in the shared moveto handler (QQUWS_MOVETO).

-- Items that can be hidden as treasure (the standard drop pool; the Philosopher's
-- Stone is deliberately excluded so it stays unobtainable).
local treasure_item_pool = {
	'magic_res','cold_res','cold_weapon','phys_res','impact_res','impact_weapon','fire_res','fire_weapon',
	'arcane_res','arcane_weapon','blade_res','blade_weapon','pierce_res','pierce_weapon','hp_low','hp_med',
	'hp_high','steadfast','regen','melee_dmg','ranged_dmg','ranged_acc','melee_parry','melee_poison',
	'melee_slow','mp','feeding','leadership','drain','defense','skirm','first_strike','fear','discouragement',
	'burns','golden_armor','heal','freezing_gem','field_disruption','armor_destruction','protection',
	'double_attack','hitn_run','extra_strikes','rat_pack','icewind_aura','book','dragon_protection','arkenstone',
}

local function is_walkable_base(ter)
	local base = ter:match('^[^%^]+') or ter
	local c = base:sub(1, 1)
	if c == 'Q' or c == 'X' then return false end   -- chasm / lava / impassable cave wall
	if base:sub(1, 2) == 'Wo' then return false end -- deep water / ocean
	return true
end

-- Picks a random walkable, unoccupied tile (no unit, no existing map object) and a
-- random item type, writing them to cfg.x_var / cfg.y_var / cfg.type_var. Sets the
-- coordinates to 0 and the type to '' if no spot is available.
function wesnoth.wml_actions.qquws_pick_treasure_spot(cfg)
	local map = wesnoth.current.map

	local blocked = {}
	for _,u in ipairs(wesnoth.get_units {}) do
		blocked[u.x .. ',' .. u.y] = true
	end
	for _,it in ipairs(wml.array_access.get('scrollable_items')) do
		if it.x and it.y then
			blocked[it.x .. ',' .. it.y] = true
		end
	end

	local candidates = {}
	for _,hex in ipairs(wesnoth.map.find { terrain = '*' }) do
		if is_walkable_base(map[hex]) and not blocked[hex.x .. ',' .. hex.y] then
			candidates[#candidates + 1] = hex
		end
	end

	local x_var = cfg.x_var or 'treasure_tx'
	local y_var = cfg.y_var or 'treasure_ty'
	local type_var = cfg.type_var or 'treasure_item_type'

	if #candidates == 0 then
		wml.variables[x_var] = 0
		wml.variables[y_var] = 0
		wml.variables[type_var] = ''
		return
	end

	local spot = candidates[mathx.random(1, #candidates)]
	wml.variables[x_var] = spot.x
	wml.variables[y_var] = spot.y
	wml.variables[type_var] = treasure_item_pool[mathx.random(1, #treasure_item_pool)]
end

-- Sets cfg.result_var to whether an uncollected item still sits at cfg.x / cfg.y.
function wesnoth.wml_actions.qquws_item_present_at(cfg)
	local x = tonumber(cfg.x)
	local y = tonumber(cfg.y)
	local present = false

	for _,it in ipairs(wml.array_access.get('scrollable_items')) do
		if it.cat == 'item' and tonumber(it.x) == x and tonumber(it.y) == y then
			present = true
			break
		end
	end

	wml.variables[cfg.result_var or 'treasure_still_there'] = present
end
