--<<
-- (t)urn, (d)iff
-- y only matters if (t)urn = 1
-- lvl is important for random spawns, it should match the level of #type# unit
-- guard moves only if enemy within range
-- moves (int) -1 = no change
-- buff (empty | champion_buff_id)
-- item (true | false) if true then random item is selected on spawn
-- gold if gt 0 then unit gives this gold amount when killed
-- recruits (false | str)
-- recruitment_gold (int)

-- mandatory fields are t, d, side, x, lvl and type

-- for objects 'row' = object
-- cat is mandatory

local hidden_item = { ['row'] = 'item', ['t'] = 1, ['asymmetric'] = true, ['pool'] = { 'cold_res','impact_res','fire_res','arcane_res','blade_res','pierce_res','melee_poison','double_attack','hitn_run','extra_strikes' }, ['overwrite_image'] = 'items/bones.png' }
local r = mathx.random(1, 4)

if r == 1 then
	hidden_item['x'] = 17
	hidden_item['y'] = 13
elseif r == 2 then
	hidden_item['x'] = 13
	hidden_item['y'] = 14
elseif r == 3 then
	hidden_item['x'] = 24
	hidden_item['y'] = 6
else
	hidden_item['y'] = 11
	hidden_item['x'] = 10
end

return {
	-- objects
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 14, ['y'] = 17, ['image'] = 'scenery/gate-rusty-se.png', ['mirror_image'] = 'scenery/gate-rusty-sw.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 13, ['y'] = 11, ['image'] = 'scenery/gate-rusty-se.png', ['mirror_image'] = 'scenery/gate-rusty-sw.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 22, ['y'] = 8, ['image'] = 'scenery/gate-rusty-se.png', ['mirror_image'] = 'scenery/gate-rusty-sw.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 9, ['x'] = 15, ['image'] = 'scenery/gate-rusty-se.png', ['mirror_image'] = 'scenery/gate-rusty-sw.png', ['cat'] = 'decorative', },
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 20, ['y'] = 17, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 24, ['y'] = 5, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 2, ['x'] = 25, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 8, ['x'] = 20, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 9, ['x'] = 13, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 12, ['x'] = 24, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 15, ['x'] = 22, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 18, ['x'] = 23, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 23, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 24, ['x'] = 24, ['image'] = 'scenery/gate-rusty-sw.png', ['mirror_image'] = 'scenery/gate-rusty-se.png', ['cat'] = 'decorative', },
	
	hidden_item,
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 17, ['y'] = 13, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 13, ['y'] = 14, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 24, ['y'] = 6, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 11, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 19, ['y'] = 10, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 4 },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 4, ['cat'] = 'heal', ['image'] = 'items/box.png', ['name'] = "Medicine box", ['amount'] = 8 },
	{ ['row'] = 'object', ['t'] = 3, ['x'] = 21, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 8 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 16, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 12 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'items/ornate1.png', ['name'] = "Wine bottle" },
	{ ['row'] = 'object', ['t'] = 18, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent" },
	
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'items/dummy.png', ['amount'] = 1, ['name'] = 'Armory', ['set'] = 'R4', ['color'] = '#a7b2b5', ['tooltip'] = '+10% physical resistance (100%)' },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Impaler', ['moves'] = 0 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0, ['gold'] = 20 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_feu_khaganate_Shieldbearer', ['default'] = 'Heavy Infantryman', ['moves'] = 0 },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 11, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 3 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 11, ['y'] = 14, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infected_Hound', ['default'] = 'Thug', ['moves'] = 5 },
	
	-- 2 - 8 (mask y 36 - 30)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Bowman', ['default'] = 'Bowman', ['moves'] = 0 },
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Sergeant', ['recruits'] = 'AE_efm_imperialists_Legionnaire,AE_myh_Legionnaire,AE_imp_Lavinians_Bowman', ['default_recruits'] = 'Thug,Bowman,Spearman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 40, ['gold'] = 40 },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_feu_khaganate_Rigid', ['default'] = 'Swordsman', ['moves'] = 0 },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 1, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_stf_eventide_Eventide_Herbalist', ['default'] = 'Dune Herbalist', ['allow_random'] = false, },
	
	{ ['t'] = 8, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Rouser', ['race_guard_off'] = true, ['calls_for_help'] = true },

	{ ['t'] = 8, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0 },
	
	{ ['t'] = 8, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_arc_ukians_Attack_Dog', ['default'] = 'Goblin Impaler', ['race_guard_off'] = true },
	
	{ ['t'] = 3, ['d'] = 5, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_mrc_holy_order_Interrogator', ['default'] = 'Heavy Infantryman', ['race_guard_off'] = true, ['beefy'] = 20 },
	
	-- 9 - 15 (mask y 29 - 23)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mrc_enchanters_Floating_Sword', ['default'] = 'Fencer', ['moves'] = 0 },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'Sergeant', ['default'] = 'Sergeant', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Corporal', ['default'] = 'Sergeant', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Crossbowman', ['default'] = 'Bowman', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Field_Ballista', ['default'] = 'Longbowman', ['moves'] = 0, ['gold'] = 10 },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Bowman', ['default'] = 'Bowman', },
	
	{ ['t'] = 14, ['d'] = 3, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Shifting_Sword', ['default'] = 'Duelist', ['moves'] = 0 },
	
	{ ['t'] = 10, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },
	{ ['t'] = 14, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Elemental_Rune_Interpreter', ['default'] = 'Red Mage', ['gold'] = 10, ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 10, ['d'] = 5, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Light_Infantryman', ['default'] = 'Spearman', ['race_guard_off'] = true },
	
	-- 16 - 22 (mask y 22 - 16)
	
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'Lieutenant', ['default'] = 'Lieutenant', ['recruits'] = 'AE_feu_ceresians_Yeoman,AE_feu_ceresians_Crossbowman', ['default_recruits'] = 'Bowman,Spearman', ['r_lvls'] = '1,1', ['recruitment_gold'] = 55, ['gold'] = 10 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = 'Pikeman', ['guard'] = true, ['gold'] = 10, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_myh_Great_Wizard', ['default'] = 'White Mage', ['gold'] = 10, },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Field_Ballista', ['default'] = 'Javelineer', ['moves'] = 0 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 1, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Elvish Shaman', ['default'] = 'Elvish Shaman', ['allow_random'] = false },
	
	{ ['t'] = 17, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Ghost', ['default'] = 'Ghost', ['race_guard_off'] = true, },
	{ ['t'] = 19, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = 'Pikeman', ['guard'] = true, ['gold'] = 10, ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 20, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Shadow', ['default'] = 'Shadow', },
	{ ['t'] = 20, ['d'] = 3, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Squire', ['default'] = 'Spearman', },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Titan', ['default'] = 'Pikeman', },
	
	{ ['t'] = 19, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mrc_slavers_Abuser', ['default'] = 'Fugitive', ['race_guard_off'] = true },
	{ ['t'] = 21, ['d'] = 5, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_myh_Light_Spirit', ['default'] = 'Mage', },
	
	-- 23 - 29 (mask y 15 - 9)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_myh_Earth', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Velite', ['default'] = 'Duelist', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Earth_Daemon_2', ['default'] = 'Cave Bear', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Wraith', ['default'] = 'Wraith', ['bulky'] = 32, ['fast'] = 1 },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Flying_Toad', ['default'] = 'Fire Ant', },
	
	{ ['t'] = 24, ['d'] = 2, ['side'] = 4, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Stinkbug', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, },
	
	{ ['t'] = 26, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', },
	{ ['t'] = 27, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Knight_of_the_Sun', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Trapdoor_Spider', ['default'] = 'Swamp Lizard', ['moves'] = 0, },
	
	{ ['t'] = 23, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Fencer', },
	{ ['t'] = 24, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Arbalestier', ['default'] = 'Longbowman', },
	
	-- 30 - 36 (mask y 8 - 2)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Hoplite', ['default'] = 'Pikeman', ['bulky'] = 40, ['armored'] = 12 },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Order_Knight', ['default'] = 'Dragoon', ['calls_for_help'] = true, ['race_guard_off'] = true },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Disciple_of_Eltire', ['default'] = 'Mage', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Blue_Machinist', ['default'] = 'Outlaw', ['recruits'] = 'AE_arc_menagerie_Cyborg,AE_arc_menagerie_Drone,AE_arc_menagerie_Mechanical_Seeker', ['default_recruits'] = 'Thief,Footpad,Thug', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75, ['item'] = true },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Patrol_Captain', ['default'] = 'Lieutenant', },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Spiker', ['default'] = 'Swordsman', },
	
	{ ['t'] = 33, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Rock_Rider', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Drone', ['default'] = 'Thug', ['beefy'] = 40, },
	
	{ ['t'] = 33, ['d'] = 5, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Magic_Sword', ['default'] = 'Duelist', ['agile'] = 8 },
	
	-- final boss 33 / mask y 5
	
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 2, ['type'] = 'AE_myh_Militant', ['default'] = 'Javelineer', ['buff'] = 'A28:B13:C21:C16', ['moves'] = 0, ['final_boss'] = true, ['story_message'] = 'The prisoners are escaping! Guards! After them!', ['story_response'] = 'I want the head of this filth!' },
}


-->>
