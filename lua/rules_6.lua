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

local hidden_item = { ['row'] = 'item', ['t'] = 1, ['asymmetric'] = true, ['pool'] = { 'cold_weapon','impact_weapon','fire_weapon','arcane_weapon','blade_weapon','pierce_weapon' }, ['overwrite_image'] = 'items/bones.png' }
local r = mathx.random(1, 4)

if r == 1 then
	hidden_item['x'] = 17
	hidden_item['y'] = 13
elseif r == 2 then
	hidden_item['x'] = 22
	hidden_item['y'] = 9
elseif r == 3 then
	hidden_item['x'] = 20
	hidden_item['y'] = 6
else
	hidden_item['y'] = 10
	hidden_item['x'] = 12
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
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 22, ['y'] = 9, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 20, ['y'] = 6, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 12, ['y'] = 10, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 19, ['y'] = 10, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 4 },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 4, ['cat'] = 'heal', ['image'] = 'items/box.png', ['name'] = "Medicine box", ['amount'] = 6 },
	{ ['row'] = 'object', ['t'] = 3, ['x'] = 21, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 8 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 16, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 10 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'items/ornate1.png', ['name'] = "Wine bottle" },
	{ ['row'] = 'object', ['t'] = 18, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent" },
	
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'items/dummy.png', ['amount'] = 1, ['name'] = 'Armory', ['set'] = 'R4', ['color'] = '#a7b2b5', ['tooltip'] = '+10% physical resistance (100%)' },
	

	{ ['row'] = 'object', ['t'] = 41, ['x'] = 8, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 75 },
	{ ['row'] = 'object', ['t'] = 50, ['x'] = 17, ['cat'] = 'hidden_unit', ['type'] = 'AE_fut_brungar_Undecided_Student', ['type_default'] = 'Peasant', ['message'] = "Hey man! I'm so glad to see someone normal here. Listen, this is insane what is going on here I need to get the hell out of here! If you escort me to the <span color='#8de1f2'>Crystal Forest</span> I will reward you greatly!", ['new_unit_special_id'] = 'rfc_crystal_forest_escort_unit' },
	{ ['row'] = 'object', ['t'] = 56, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'scenery/uws/stone-circle.png', ['amount'] = 2, ['name'] = 'Stone Circle', ['set'] = 'R6,R7', ['color'] = '#a0a2ad', ['tooltip'] = '+10% forest defense (50%)\
+10% hills defense (50%)' },
	{ ['row'] = 'object', ['t'] = 63, ['x'] = 11, ['cat'] = 'decorative', ['image'] = 'halo/monster/stoat-frost-mask.png', ['name'] = 'Town of Ahrenvou' },

	{ ['row'] = 'object', ['t'] = 90, ['x'] = 7, ['image'] = 'halo/elven/druid-healing8.png', ['name'] = 'Crystal Forest', ['cat'] = 'event', ['event'] = 'rfc_crystal_forest', },
	{ ['row'] = 'object', ['t'] = 98, ['x'] = 24, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 60 },

	{ ['row'] = 'object', ['t'] = 111, ['x'] = 11, ['image'] = 'scenery/temple-cracked3.png', ['cat'] = 'event', ['event'] = 'rfc_temple', },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['image'] = 'scenery/uws/altar.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'sacrificial_altar' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['image'] = 'scenery/uws/altar-bloody.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bloody_altar' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 6, ['image'] = 'items/bones.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'temple_bones' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['cat'] = 'event', ['event'] = 'rfc_altar', },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 6, ['cat'] = 'event', ['event'] = 'rfc_bones', },
	{ ['row'] = 'object', ['t'] = 130, ['x'] = 20, ['cat'] = 'rune', ['image'] = 'scenery/uws/energy_vortex_alt.png', ['amount'] = 1, ['name'] = 'Rune', ['set'] = 'R17', ['color'] = '#b366ed', ['tooltip'] = '+3 damage (100%)' },

	{ ['row'] = 'object', ['t'] = 133, ['x'] = 7, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 40 },
	{ ['row'] = 'object', ['t'] = 138, ['x'] = 15, ['image'] = 'scenery/tent-fancy-red.png', ['cat'] = 'event', ['event'] = 'rfc_shop', },
	{ ['row'] = 'object', ['t'] = 152, ['x'] = 23, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 60 },
	{ ['row'] = 'object', ['t'] = 163, ['x'] = 7, ['cat'] = 'rune', ['image'] = 'scenery/nest-full.png', ['amount'] = 3, ['name'] = 'Nest', ['set'] = 'reheal', ['color'] = '#dbbf60', ['tooltip'] = '100% reheal (100%)' },
	{ ['row'] = 'object', ['t'] = 166, ['x'] = 23, ['cat'] = 'rune', ['image'] = 'scenery/nest-full.png', ['amount'] = 3, ['name'] = 'Nest', ['set'] = 'reheal', ['color'] = '#dbbf60', ['tooltip'] = '100% reheal (100%)' },
	

	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Impaler', ['moves'] = 0 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0, ['gold'] = 20 },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_feu_khaganate_Shieldbearer', ['default'] = 'Heavy Infantryman', ['moves'] = 0 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 12, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 9, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 8, ['y'] = 14, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infected_Hound', ['default'] = 'Thug', ['moves'] = 5 },
	
	-- 2 - 8 (mask y 183 - 177)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Bowman', ['default'] = 'Bowman', ['moves'] = 0 },
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Sergeant', ['recruits'] = 'AE_efm_imperialists_Legionnaire,AE_myh_Legionnaire,AE_imp_Lavinians_Bowman', ['default_recruits'] = 'Thug,Bowman,Spearman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 40, ['gold'] = 40 },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_feu_khaganate_Rigid', ['default'] = 'Swordsman', ['moves'] = 0 },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 1, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_stf_eventide_Eventide_Herbalist', ['default'] = 'Dune Herbalist', ['allow_random'] = false, },
	
	{ ['t'] = 8, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Rouser', },

	{ ['t'] = 8, ['d'] = 3, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0 },
	
	{ ['t'] = 8, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_arc_ukians_Attack_Dog', ['default'] = 'Goblin Impaler', ['race_guard_off'] = true },
	
	{ ['t'] = 3, ['d'] = 6, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_mrc_holy_order_Interrogator', ['default'] = 'Heavy Infantryman', ['race_guard_off'] = true, ['beefy'] = 20 },

	{ ['t'] = 6, ['d'] = 7, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Bacterium', ['default'] = 'Soulless', ['buff'] = 'A7:B1:C44' },
	
	-- 9 - 15 (mask y 176 - 170)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mrc_enchanters_Floating_Sword', ['default'] = 'Fencer', ['moves'] = 0 },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'Sergeant', ['default'] = 'Sergeant', ['race_guard_off'] = true, ['calls_for_help'] = true, },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Corporal', ['default'] = 'Sergeant', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Crossbowman', ['default'] = 'Bowman', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Field_Ballista', ['default'] = 'Longbowman', ['moves'] = 0, ['gold'] = 10 },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Bowman', ['default'] = 'Bowman', },
	
	{ ['t'] = 14, ['d'] = 3, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Shifting_Sword', ['default'] = 'Duelist', ['moves'] = 0 },
	
	{ ['t'] = 14, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Elemental_Rune_Interpreter', ['default'] = 'Red Mage', ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 10, ['d'] = 5, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },

	{ ['t'] = 10, ['d'] = 6, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Light_Infantryman', ['default'] = 'Spearman', ['race_guard_off'] = true },
	
	-- 16 - 22 (mask y 169 - 163)
	
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'Lieutenant', ['default'] = 'Lieutenant', ['recruits'] = 'AE_feu_ceresians_Yeoman,AE_feu_ceresians_Crossbowman', ['default_recruits'] = 'Bowman,Spearman', ['r_lvls'] = '1,1', ['recruitment_gold'] = 55, ['gold'] = 10 },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = 'Pikeman', ['guard'] = true, ['gold'] = 10, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Field_Ballista', ['default'] = 'Javelineer', ['moves'] = 0 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 1, ['x'] = 11, ['lvl'] = 1, ['type'] = 'Elvish Shaman', ['default'] = 'Elvish Shaman', ['allow_random'] = false },
	
	{ ['t'] = 19, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Pikeman', ['default'] = 'Pikeman', ['guard'] = true, ['gold'] = 10, ['disallow_slash_unguardian'] = true, },
	{ ['t'] = 20, ['d'] = 2, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Squire', ['default'] = 'Spearman', },

	{ ['t'] = 20, ['d'] = 3, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'Shadow', ['default'] = 'Shadow', },
	{ ['t'] = 21, ['d'] = 3, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_myh_Great_Wizard', ['default'] = 'White Mage', },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Titan', ['default'] = 'Pikeman', ['beefy'] = 40 },
	{ ['t'] = 17, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Ghost', ['default'] = 'Ghost', ['race_guard_off'] = true, },

	{ ['t'] = 21, ['d'] = 5, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },
	
	{ ['t'] = 19, ['d'] = 6, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mrc_slavers_Abuser', ['default'] = 'Fugitive', ['race_guard_off'] = true },
	{ ['t'] = 21, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_myh_Light_Spirit', ['default'] = 'Mage', },

	{ ['t'] = 17, ['d'] = 7, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Skeleton', ['default'] = 'Skeleton', ['aggressive'] = 2, },
	
	
	-- 23 - 29 (mask y 162 - 156)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_myh_Earth', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Earth_Daemon_2', ['default'] = 'Cave Bear', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Wraith', ['default'] = 'Wraith', ['bulky'] = 32, ['fast'] = 1 },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Flying_Toad', ['default'] = 'Fire Ant', },
	
	{ ['t'] = 24, ['d'] = 2, ['side'] = 4, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Stinkbug', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, },
	
	{ ['t'] = 26, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', },
	{ ['t'] = 27, ['d'] = 3, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Knight_of_the_Sun', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Trapdoor_Spider', ['default'] = 'Swamp Lizard', },
	{ ['t'] = 26, ['d'] = 4, ['side'] = 4, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', ['agile'] = 10 },
	
	{ ['t'] = 23, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Fencer', },

	{ ['t'] = 24, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Arbalestier', ['default'] = 'Longbowman', },

	{ ['t'] = 24, ['d'] = 7, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Velite', ['default'] = 'Duelist', },
	
	-- 30 - 36 (mask y 155 - 149)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Hoplite', ['default'] = 'Pikeman', ['bulky'] = 40, ['armored'] = 10 },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Order_Knight', ['default'] = 'Dragoon', ['calls_for_help'] = true, ['race_guard_off'] = true },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Disciple_of_Eltire', ['default'] = 'Mage', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Blue_Machinist', ['default'] = 'Outlaw', ['recruits'] = 'AE_arc_menagerie_Cyborg,AE_arc_menagerie_Drone,AE_arc_menagerie_Mechanical_Seeker', ['default_recruits'] = 'Thief,Footpad,Thug', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75, ['item'] = true },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Patrol_Captain', ['default'] = 'Lieutenant', },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_myh_Militant', ['default'] = 'Javelineer', ['buff'] = 'A49:B13:C21:C16', ['name'] = 'Badamar the Prison Guard', ['story_message'] = 'The prisoners are escaping! Guards! After them!', ['story_response'] = 'I want the head of this filth!', ['calls_for_help'] = true, ['race_guard_off'] = true },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Spiker', ['default'] = 'Swordsman', },
	
	{ ['t'] = 33, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Rock_Rider', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Drone', ['default'] = 'Thug', ['beefy'] = 40, },

	{ ['t'] = 35, ['d'] = 5, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Spearman', },
	{ ['t'] = 36, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Spearman', },
	
	{ ['t'] = 33, ['d'] = 6, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Magic_Sword', ['default'] = 'Duelist', ['armored'] = 10 },

	{ ['t'] = 35, ['d'] = 7, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Stalwart', ['default'] = 'Swordsman', },


	-- 37 - 43 (mask y 148 - 142)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_rhy_fh_Beaver', ['default'] = 'Mudcrawler', ['guard'] = true },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Shaman', ['default'] = 'Elvish Shaman', },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Deerrider', ['default'] = 'Elvish Scout', },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 48, ['guard'] = true, ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 39, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_bear_cub', ['default'] = 'Fire Ant', ['guard'] = true, },
	{ ['t'] = 40, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Fire Ant', ['default'] = 'Fire Ant', },

	{ ['t'] = 40, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Young_Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	
	{ ['t'] = 40, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mie_vampire_bounty_hunter', ['default'] = 'Footpad', },
	{ ['t'] = 42, ['d'] = 4, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_chs_sylvians_Fire_Faerie', ['default'] = 'Elvish Druid', },
	
	{ ['t'] = 41, ['d'] = 5, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Archer', ['default'] = 'Poacher', },

	{ ['t'] = 41, ['d'] = 6, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Rider', ['default'] = 'Elder Falcon', },
	{ ['t'] = 43, ['d'] = 6, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_rhy_fd_Gnome_Luck', ['default'] = 'Firebomb Ant', ['buff'] = 'A36:B10:C16' },

	{ ['t'] = 42, ['d'] = 7, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_rhy_fd_Gnome_Jumper', ['default'] = 'Giant Spider', ['agile'] = 15, },
	
	-- 44 - 50 (mask y 141 - 135)     old t=5 to t=11

	{ ['t'] = 44, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Axethrower', ['default'] = 'Elvish Fighter', ['guard'] = true },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Mage', ['default'] = 'Mage', ['recruits'] = 'AE_rhy_fh_Archer,AE_rhy_fh_Axethrower,AE_rhy_fh_Shaman', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75, ['recruit_minion'] = 'C30' },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Leshi', ['default'] = 'Elvish Druid', ['gold'] = 20, },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Naga Fighter', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', ['race_guard_off'] = true, },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Queen', ['default'] = 'Naga Warrior', ['recruits'] = 'AE_mrc_hive_Beetle,AE_mrc_hive_Mosquito,AE_mrc_hive_Swarm', ['default_recruits'] = 'Naga Dirkfang,Naga Fighter,Naga Guard', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 125, ['recruit_minion'] = 'D2' },
	
	{ ['t'] = 49, ['d'] = 2, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_bem_wood_warriors_Carnivore_Plant', ['default'] = 'Elvish Fighter', ['race_guard_off'] = true, },

	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Giant', ['default'] = 'Young Ogre', ['race_guard_off'] = true, ['bulky'] = 40 },

	{ ['t'] = 49, ['d'] = 4, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = 'Naga Fighter', ['agile'] = 5 },

	{ ['t'] = 46, ['d'] = 5, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Firefly', ['default'] = 'Naga Guard', },

	{ ['t'] = 46, ['d'] = 6, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_rhy_fd_Pathfinder', ['default'] = 'Grand Dragonfly', ['calls_for_help'] = true },
	{ ['t'] = 49, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Naga Guard', ['beefy'] = 24, },

	{ ['t'] = 48, ['d'] = 7, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_rhy_fd_Coloss', ['default'] = 'Ogre', ['buff'] = 'A21:B55:C12:C6' },

	-- 51 - 56 (mask y 134 - 128)

	{ ['t'] = 52, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Kodama', ['default'] = 'Wose Shaman', ['guard'] = true, },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mie_thelian_guardian', ['default'] = 'Elvish Champion', ['guard'] = true },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_agl_yokai_Medusa_Witch', ['default'] = 'Wild Wyvern', ['race_guard_off'] = true, ['calls_for_help'] = true },

	{ ['t'] = 56, ['d'] = 2, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_mh_Stonegolem', ['default'] = 'Ogre', ['guard'] = true, },

	{ ['t'] = 51, ['d'] = 3, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_ey_Waterpixie', ['default'] = 'Elder Falcon', },

	{ ['t'] = 52, ['d'] = 4, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_ey_Nymph', ['default'] = 'Water Serpent', },

	{ ['t'] = 53, ['d'] = 5, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Mantis', ['default'] = 'Grand Dragonfly', },
	{ ['t'] = 55, ['d'] = 5, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', },

	{ ['t'] = 54, ['d'] = 6, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_bem_wood_warriors_Fatal_Tangle', ['default'] = 'Wose Shaman', ['buff'] = 'A29:B15:C43:C21', },

	{ ['t'] = 55, ['d'] = 7, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_myh_Tempest_Spirit', ['default'] = 'Merman Javelineer', ['buff'] = 'A42:B24:C52', },


	-- 57 - 63 (mask y 127 - 121)

	{ ['t'] = 58, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['agile'] = 10 },
	{ ['t'] = 58, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_warrior', ['default'] = 'Elvish Fighter', ['beefy'] = 24 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 40, ['guard'] = true },
	{ ['t'] = 60, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', ['race_guard_off'] = true, },
	{ ['t'] = 61, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_rhy_fh_Forestking', ['default'] = 'Elvish High Lord', ['recruits'] = 'AE_mie_thelian_shaman,AE_mie_thelian_hunter,AE_mie_thelian_deer_rider,AE_rhy_fd_Giant,AE_rhy_fd_Gnome_Musican', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman,Elvish Scout,Mage', ['r_lvls'] = '1,1,1,1,1', ['recruitment_gold'] = 240, },
	{ ['t'] = 62, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Wose Shaman', ['default'] = 'Wose Shaman', ['bulky'] = 100, ['race_guard_off'] = true },
	{ ['t'] = 63, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_shaman', ['default'] = 'Elvish Shaman', },

	{ ['t'] = 62, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['aggressive'] = 2, },

	{ ['t'] = 59, ['d'] = 3, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Healer', ['default'] = 'Elvish Sorceress', },
	{ ['t'] = 63, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_deerstalker', ['default'] = 'Elvish Ranger', ['disallow_slash_unguardian'] = true, },

	{ ['t'] = 63, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_wolf', ['default'] = 'Bay Horse', },

	{ ['t'] = 57, ['d'] = 5, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_feral', ['default'] = 'Elvish Fighter', ['fast'] = 1 },

	{ ['t'] = 60, ['d'] = 6, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_chieftain', ['default'] = 'Elvish Captain', ['bulky'] = 32, ['beefy'] = 20, ['ai_add_gold'] = 120, ['event'] = 'set_high_armoured_recruits', ['event_var_a'] = 25 },

	{ ['t'] = 58, ['d'] = 7, ['side'] = 2, ['x'] = 6, ['lvl'] = 3, ['type'] = 'AE_mie_thelian_forefather', ['default'] = 'Nightgaunt', ['armored'] = 15, ['race_guard_off'] = true, ['calls_for_help'] = true },
	{ ['t'] = 62, ['d'] = 7, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_mie_thelian_ghost_warrior', ['default'] = 'Elvish Champion', ['buff'] = 'A46:B10:C14:B56' },

	-- 64 - 70 (mask y 120 - 114)
	
	{ ['t'] = 64, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_wolf_fanatic', ['default'] = 'Elvish Hero', },
	{ ['t'] = 66, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 67, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_ice_golem_king', ['default'] = 'Dwarvish Runemaster', ['buff'] = 'A26:B16:C45', ['item'] = true },
	{ ['t'] = 67, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 68, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 70, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },

	{ ['t'] = 68, ['d'] = 2, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 70, ['d'] = 2, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'Direwolf', ['default'] = 'Direwolf', },

	{ ['t'] = 66, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', },
	{ ['t'] = 68, ['d'] = 3, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_ice_golem', ['default'] = 'Dwarvish Guardsman', },

	{ ['t'] = 66, ['d'] = 4, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_warrior', ['default'] = 'Dwarvish Stalwart', },
	{ ['t'] = 67, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'Great Wolf', ['default'] = 'Great Wolf', },

	{ ['t'] = 65, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_berserker_golem', ['default'] = 'Dwarvish Berserker', ['calls_for_help'] = true, ['race_guard_off'] = true },
	{ ['t'] = 69, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	
	{ ['t'] = 68, ['d'] = 6, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'Great Wolf', ['default'] = 'Great Wolf', ['fast'] = 1 },
	{ ['t'] = 70, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_big_ice_golem', ['default'] = 'Dwarvish Steelclad', ['bulky'] = 48, },
	{ ['t'] = 70, ['d'] = 6, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },

	{ ['t'] = 69, ['d'] = 7, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_heavy_warrior', ['default'] = 'Dwarvish Explorer', ['buff'] = 'A19:B25:C58', ['allow_random'] = false },

	-- 71 - 77 (mask y 113 - 107)

	{ ['t'] = 71, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_gunner', ['default'] = 'Dwarvish Stalwart', ['guard'] = true, ['armored'] = 20 },
	{ ['t'] = 74, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_mage', ['default'] = 'Dwarvish Pathfinder', ['bulky'] = 20, },
	{ ['t'] = 74, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 75, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_fighter', ['default'] = 'Dwarvish Thunderer', },

	{ ['t'] = 77, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_gunner_master', ['default'] = 'Dwarvish Sentinel', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['armored'] = 30, ['gold'] = 20 },
	
	{ ['t'] = 77, ['d'] = 3, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_rider', ['default'] = 'Dwarvish Ulfserker', ['beefy'] = 40 },
	{ ['t'] = 77, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_shieldman', ['default'] = 'Dwarvish Stalwart', ['calls_for_help'] = true, },
	
	{ ['t'] = 72, ['d'] = 4, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_flying_golem', ['default'] = 'Gryphon Rider', ['agile'] = 15 },

	{ ['t'] = 72, ['d'] = 5, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },

	{ ['t'] = 73, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_warrior', ['default'] = 'Great Icemonax', },
	{ ['t'] = 76, ['d'] = 6, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Great Icemonax', ['default'] = 'Great Icemonax', ['bulky'] = 48 },

	{ ['t'] = 74, ['d'] = 7, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_lanceman', ['default'] = 'Dwarvish Steelclad', ['armored'] = 15 },

	-- 78 - 84 (mask y 106 - 100)

	{ ['t'] = 79, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_witch', ['default'] = 'Dwarvish Thunderguard', ['recruits'] = 'AE_agl_frozen_frost_fighter,AE_agl_frozen_frost_rider,AE_agl_frozen_frost_student,AE_agl_frozen_ice_golem', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Guardsman,Dwarvish Scout,Dwarvish Thunderer', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 110, ['recruit_armored'] = 25, ['gold'] = 50 },
	{ ['t'] = 80, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_fury_shooter', ['default'] = 'Dwarvish Dragonguard', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 82, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', ['race_guard_off'] = true },
	{ ['t'] = 84, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Matriarch', ['default'] = 'Troll Shaman', ['guard'] = true, ['calls_for_help'] = true },
	{ ['t'] = 84, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Priestress_of_the_Vault', ['default'] = 'Skeleton', ['armored'] = 10, ['gold'] = 10 },

	{ ['t'] = 84, ['d'] = 2, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', },

	{ ['t'] = 78, ['d'] = 3, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_lanceman', ['default'] = 'Dwarvish Runesmith', ['gold'] = 10 },

	{ ['t'] = 84, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Black_Tyrhai', ['default'] = 'Troll Hero', ['bulky'] = 60, },

	{ ['t'] = 81, ['d'] = 5, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_imp_Sidhe_Ice_Bear', ['default'] = 'Cave Bear', ['buff'] = 'A54:B6:C19', },

	{ ['t'] = 80, ['d'] = 6, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_lance_master', ['default'] = 'Dwarvish Runemaster', ['armored'] = 20, },

	{ ['t'] = 81, ['d'] = 7, ['side'] = 3, ['x'] = 17, ['lvl'] = 5, ['type'] = 'QQ_ice_mammoth', ['default'] = 'QQ_ice_mammoth', ['buff'] = 'A26:B48:C61', ['allow_random'] = false },

	-- 85 - 91 (mask y 98 - 92 - something is off somewhere)

	{ ['t'] = 85, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Night_Maiden', ['default'] = 'Ghoul', },
	{ ['t'] = 87, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Phade', ['default'] = 'Great Icemonax', },
	{ ['t'] = 87, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Orcish Assassin', ['guard'] = true },
	{ ['t'] = 89, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Patroness', ['default'] = 'Great Troll', ['recruits'] = 'AE_agl_deep_Tyrhai_Cavalry,AE_agl_deep_Vengeance,AE_agl_deep_Phade,AE_agl_deep_Night_Stalker', ['default_recruits'] = 'Troll Hero,Shadow,War Harbinger,Ogre', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 170, ['recruit_minion'] = 'D1' },
	{ ['t'] = 89, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Icemonax', },

	{ ['t'] = 90, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Soldier', ['default'] = 'Deathblade', ['guard'] = true },

	{ ['t'] = 86, ['d'] = 3, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Minotaur', ['default'] = 'Troll', ['guard'] = true, ['beefy'] = 40 },
	{ ['t'] = 87, ['d'] = 3, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Lidh', ['default'] = 'Young Ogre', },

	{ ['t'] = 88, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Tyrhai_Rider', ['default'] = 'Giant Mudcrawler', },

	{ ['t'] = 91, ['d'] = 5, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['beefy'] = 40, ['fast'] = 1 },
	
	{ ['t'] = 90, ['d'] = 6, ['side'] = 4, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Irr', ['default'] = 'Banebow', ['buff'] = 'A46:B51:C32:C21', },

	{ ['t'] = 91, ['d'] = 7, ['side'] = 4, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Corrupted', ['default'] = 'Nightgaunt', ['buff'] = 'A55:B57:C36', },

	-- 92 - 98 (mask y 94 - 88)

	{ ['t'] = 92, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['bulky'] = 12, ['agile'] = 10, },
	{ ['t'] = 94, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Widow', ['default'] = 'Dark Adept', },
	{ ['t'] = 95, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Tomb_Sentinel', ['default'] = 'Shadow', ['beefy'] = 28 },
	{ ['t'] = 95, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 4, ['type'] = 'AE_arc_phantom_Mummy_Pharo', ['default'] = 'Ancient Lich', ['recruits'] = 'AE_arc_phantom_Wing_Dancer,AE_arc_phantom_Archer,AE_arc_phantom_Tomb_Sentinel,AE_arc_phantom_Mummy_Noble,AE_arc_phantom_Tomb_Shield_Guard', ['default_recruits'] = 'Shadow,Wraith,Deathblade,Bone Shooter,Necrophage', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 200, ['recruit_minion'] = 'D4', },
	
	{ ['t'] = 96, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_arc_despair_Banshee', ['default'] = 'Death Knight', },

	{ ['t'] = 93, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Black_Shadow', ['default'] = 'Wraith', ['bulky'] = 36, ['beefy'] = 68 },
	{ ['t'] = 94, ['d'] = 3, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_arc_phantom_High_Archer', ['default'] = 'Death Knight', },
	{ ['t'] = 94, ['d'] = 3, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Vapor_23', ['default'] = 'Ghost', },

	{ ['t'] = 92, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', },
	{ ['t'] = 94, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Midnight_Beauty', ['default'] = 'Dark Sorcerer', },

	{ ['t'] = 96, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['lvl'] = 4, ['type'] = 'QQ_dark_witness', ['default'] = 'QQ_dark_witness', ['buff'] = 'A13:B7:C49', ['allow_random'] = false },
	{ ['t'] = 96, ['d'] = 5, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Vapor_12', ['default'] = 'Ghost', },

	{ ['t'] = 93, ['d'] = 6, ['side'] = 2, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Vapor_11', ['default'] = 'Ghost', },
	{ ['t'] = 97, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Nightgaunt', ['default'] = 'Nightgaunt', ['aggressive'] = 2, ['allow_random'] = false },

	{ ['t'] = 94, ['d'] = 7, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_arc_phantom_Winged_Warrior', ['default'] = 'Spectre', ['buff'] = 'A51:B59:C47:D4', ['allow_random'] = false },

	-- 99 - 105 (mask y 87 - 81)

	{ ['t'] = 99, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Saurian Skirmisher', },
	{ ['t'] = 100, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Web_Spitter', ['default'] = 'Swamp Lizard', ['guard'] = true },
	{ ['t'] = 102, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Water Serpent', ['guard'] = true },
	{ ['t'] = 104, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Saber_Cat', ['default'] = 'Saurian Flanker', ['guard'] = true, ['buff'] = 'A20:B9:C11' },
	
	{ ['t'] = 101, ['d'] = 2, ['side'] = 3, ['x'] = 11, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', },
	
	{ ['t'] = 100, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Swarm', ['default'] = 'Giant Scorpion', ['guard'] = true, },
	{ ['t'] = 104, ['d'] = 3, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Mudfoot', ['default'] = 'Swamp Lizard', ['fast'] = 2, ['agile'] = 10 },
	
	{ ['t'] = 99, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Piper', ['default'] = 'Saurian Augur', },
	{ ['t'] = 103, ['d'] = 4, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Charmer', ['default'] = 'Saurian Oracle', ['race_guard_off'] = true },

	{ ['t'] = 105, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Lizard_Eye', ['default'] = 'Saurian Javelineer', ['agile'] = 10 },
	
	{ ['t'] = 103, ['d'] = 6, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Lynx', ['default'] = 'Saurian Spearthrower', ['fast'] = 2 },
	{ ['t'] = 105, ['d'] = 6, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Saurian Skirmisher', ['beefy'] = 60, ['armored'] = 20 },

	{ ['t'] = 104, ['d'] = 7, ['side'] = 3, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },

	-- 106 - 112 (mask y 80 - 74)

	{ ['t'] = 106, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Knat', ['default'] = 'Giant Rat', },
	{ ['t'] = 106, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 108, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Swamp_Witch', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 108, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', },
	{ ['t'] = 109, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Puma', ['default'] = 'Saurian Augur', ['guard'] = true,  },
	{ ['t'] = 110, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 111, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_chs_chaos_empire_Armageddon_Imp', ['default'] = 'Wyvern Rider', ['recruits'] = 'AE_arc_khthon_Argamarok,AE_arc_khthon_Katoblepon_Magnum,AE_arc_khthon_Nightmare,AE_arc_khthon_Adamantine', ['default_recruits'] = 'Saurian Javelineer,Saurian Flanker,Saurian Seer,Saurian Prophet', ['r_lvls'] = '3,3,3,3', ['recruitment_gold'] = 400, ['recruit_minion'] = 'C11' },
	
	{ ['t'] = 107, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Rock Scorpion',  },
	
	{ ['t'] = 109, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Infest', ['default'] = 'Swamp Lizard', ['guard'] = true, ['agile'] = 15, ['allow_random'] = false },
	{ ['t'] = 110, ['d'] = 3, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 110, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Toad_Breath', ['default'] = 'Saurian Oracle', },
	
	{ ['t'] = 108, ['d'] = 4, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Mudfoot', ['default'] = 'Saurian Soothsayer', ['calls_for_help'] = true },
	{ ['t'] = 112, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Saurian Ambusher', },
	
	{ ['t'] = 110, ['d'] = 5, ['side'] = 3, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },

	{ ['t'] = 111, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['beefy'] = 160 },
	{ ['t'] = 112, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Wyrd', ['default'] = 'Saurian Ambusher', },

	{ ['t'] = 110, ['d'] = 7, ['side'] = 3, ['x'] = 17, ['lvl'] = 4, ['type'] = 'AE_arc_khthon_Ker_Kato', ['default'] = 'Wyvern Rider', ['buff'] = 'A28:B30:C30' },
	{ ['t'] = 111, ['d'] = 7, ['side'] = 3, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['beefy'] = 52 },

	-- 113 - 119 (mask y 73 - 67)

	{ ['t'] = 113, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Saurian Ambusher', },
	{ ['t'] = 113, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Knat', ['default'] = 'Giant Rat', ['allow_random'] = false },
	{ ['t'] = 115, ['d'] = 1, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mag_Black_Salamander', ['default'] = 'Naga Ringcaster', ['guard'] = true },
	{ ['t'] = 115, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Grand_Crocodile', ['default'] = 'Swamp Lizard', ['bulky'] = 20, ['fast'] = 1, ['guard'] = true, },
	{ ['t'] = 118, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mag_Green_Salamander', ['default'] = 'Naga Warrior', ['bulky'] = 60, ['race_guard_off'] = true, },
	{ ['t'] = 119, ['d'] = 1, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mag_Toad_Rider', ['default'] = 'Naga Dirkfang', ['race_guard_off'] = true, },
	{ ['t'] = 119, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Yellow_Salamander', ['default'] = 'Naga Shield Guard', ['guard'] = true },
	
	{ ['t'] = 115, ['d'] = 2, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mag_Wyvern', ['default'] = 'Giant Scorpion', ['armored'] = 10, ['guard'] = true },
	{ ['t'] = 118, ['d'] = 2, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mag_Salamander', ['default'] = 'Naga Guard', ['race_guard_off'] = true, },
	
	{ ['t'] = 113, ['d'] = 3, ['side'] = 3, ['x'] = 17, ['lvl'] = 5, ['type'] = 'QQ_arachna_queen', ['default'] = 'QQ_arachna_queen', ['buff'] = 'A13:B22:C11' },
	
	{ ['t'] = 114, ['d'] = 4, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Sorceress', ['default'] = 'Wild Wyvern', },
	{ ['t'] = 114, ['d'] = 4, ['side'] = 3, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Lizard_Eye', ['default'] = 'Saurian Flanker', ['guard'] = true, ['aggressive'] = 3, ['beefy'] = 48, ['allow_random'] = false },

	{ ['t'] = 119, ['d'] = 5, ['side'] = 4, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_mag_Toad_Rider', ['default'] = 'Naga Fighter', },
	
	{ ['t'] = 117, ['d'] = 6, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Toad_Shaman', ['default'] = 'Naga Ringcaster', ['agile'] = 10, ['race_guard_off'] = true, },

	{ ['t'] = 112, ['d'] = 7, ['side'] = 3, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['beefy'] = 72 },
	{ ['t'] = 112, ['d'] = 7, ['side'] = 3, ['x'] = 14, ['lvl'] = 5, ['type'] = 'QQ_abyssal_fungoid', ['default'] = 'QQ_abyssal_fungoid', ['allow_random'] = false, ['buff'] = 'A37:B29:C36:C14' },

	-- 120 - 126 (mask y 66 - 60)

	{ ['t'] = 121, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_rhy_vx_Snake_Viper', ['default'] = 'Elder Wose', ['agile'] = 20, ['fast'] = 1, ['guard'] = true, },
	{ ['t'] = 122, ['d'] = 1, ['side'] = 4, ['x'] = 24, ['lvl'] = 4, ['type'] = 'AE_mag_Chosen_of_Marsh', ['default'] = 'Armageddon Drake', ['recruits'] = 'AE_mag_Black_Salamander,AE_mag_Blue_Salamander,AE_mag_Green_Salamander,AE_mag_Red_Salamander,AE_mag_Yellow_Salamander,AE_mag_Toad_Shaman,AE_mag_Toad_Archer,AE_mag_Battle_Toad', ['default_recruits'] = 'Fire Drake,Drake Arbiter,Drake Warrior,Sky Drake,Swamp Lizard', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 200, ['item'] = true, ['buff'] = 'A5:B14:C29', ['recruit_minion'] = 'D5' },
	{ ['t'] = 122, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Battle_Toad', ['default'] = 'Naga Ophidian', ['buff'] = 'A21:B41:C42' },
	{ ['t'] = 123, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mag_Lava_Salamander', ['default'] = 'Naga High Guard', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['bulky'] = 100 },
	{ ['t'] = 124, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_ghastbark', ['default'] = 'Wose Shaman', ['guard'] = true, ['gold'] = 15 },
	{ ['t'] = 126, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mie_leaf_wyvern', ['default'] = 'Wose Sapling', ['race_guard_off'] = true, ['calls_for_help'] = true, ['event'] = 'follow_players_race' },
	
	{ ['t'] = 121, ['d'] = 2, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mag_Great_Wyvern', ['default'] = 'Naga Warrior', ['race_guard_off'] = true, ['bulky'] = 40 },
	{ ['t'] = 124, ['d'] = 2, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_ghastbark', ['default'] = 'Elvish Ranger', ['race_guard_off'] = true, ['beefy'] = 40 },
	
	{ ['t'] = 123, ['d'] = 3, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mie_spirit_thorn_witch', ['default'] = 'Elvish Shaman', ['armored'] = 25, ['race_guard_off'] = true },
	
	{ ['t'] = 121, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mag_Battle_Toad', ['default'] = 'Naga Warrior', ['armored'] = 15, ['bulky'] = 180 },
	{ ['t'] = 123, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mag_Salamander_Marine', ['default'] = 'Naga Zephyr', ['beefy'] = 52 },

	{ ['t'] = 125, ['d'] = 5, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_faerie', ['default'] = 'Elvish Rider', ['guard'] = true, ['fast'] = 1, ['agile'] = 15 },
	
	{ ['t'] = 122, ['d'] = 6, ['side'] = 4, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Mosquito', ['default'] = 'Naga Dirkfang', },

	{ ['t'] = 123, ['d'] = 7, ['side'] = 4, ['x'] = 16, ['lvl'] = 5, ['type'] = 'QQ_rotting_observer', ['default'] = 'QQ_rotting_observer', ['buff'] = 'A13:B15:C62', ['ai_add_gold'] = 60 },
	{ ['t'] = 124, ['d'] = 7, ['side'] = 4, ['x'] = 22, ['lvl'] = 3, ['type'] = 'AE_mag_Jungle_Assassin', ['default'] = 'Shadow Jumping Spider', ['ai_add_gold'] = 40 },

	-- 127 - 133 (mask y 58 - 52)

	{ ['t'] = 128, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_shadow_faerie', ['default'] = 'Elvish Druid', ['beefy'] = 20 },
	{ ['t'] = 128, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mie_sylvan_guardian', ['default'] = 'Cave Bear', ['guard'] = true },
	{ ['t'] = 129, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_mie_treefolk_assailant', ['default'] = 'Woodland Boar', ['guard'] = true, },
	{ ['t'] = 130, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', },
	{ ['t'] = 131, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'Wose Shaman', ['default'] = 'Wose Shaman', },
	{ ['t'] = 132, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_mie_treefolk_vengeance', ['default'] = 'Elvish Champion', ['guard'] = true, ['event'] = 'set_minion_recruits', ['event_var_a'] = 'C10' },
	{ ['t'] = 133, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 4, ['type'] = 'QQ_wose_destroyer', ['default'] = 'QQ_wose_destroyer', ['recruits'] = 'AE_chs_sylvians_Forest_Spirit,Ancient Wose,AE_chs_sylvians_Dryad,AE_agl_yokai_Elder_Leshi', ['default_recruits'] = 'Ancient Wose,Elvish High Lord,Elvish Champion,Elvish Avenger', ['r_lvls'] = '3,3,3,3', ['recruitment_gold'] = 250, ['gold'] = 100, ['allow_random'] = false },
	
	{ ['t'] = 131, ['d'] = 2, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_mie_sylvan_wrath', ['default'] = 'Ancient Wose', ['ai_add_gold'] = 40},
	
	{ ['t'] = 129, ['d'] = 3, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_mie_treefolk_assailant', ['default'] = 'Elvish Archer', },
	
	{ ['t'] = 127, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mie_treefolk_bark_elder', ['default'] = 'Elder Wose', },
	{ ['t'] = 133, ['d'] = 4, ['side'] = 2, ['x'] = 14, ['lvl'] = 3, ['type'] = 'Ancient Wose', ['default'] = 'Ancient Wose', ['allow_random'] = false, ['aggressive'] = 1, ['armored'] = 30, ['ai_add_gold'] = 60 },

	{ ['t'] = 129, ['d'] = 5, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_bear', ['default'] = 'Grand Dragonfly', ['fast'] = 1 },
	
	{ ['t'] = 130, ['d'] = 6, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_myh_Vine_Tiger', ['default'] = 'Elvish Sorceress', ['armored'] = 15, ['ai_add_gold'] = 30 },

	{ ['t'] = 132, ['d'] = 7, ['side'] = 2, ['x'] = 9, ['lvl'] = 3, ['type'] = 'AE_myh_Vine_Monster', ['default'] = 'Elvish Shyde', ['ai_add_gold'] = 50 },

	-- 134 - 140 (mask y 51 - 45)

	{ ['t'] = 135, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 5, ['type'] = 'QQ_Archwitch', ['default'] = 'QQ_Archwitch', ['buff'] = 'A19:B15:C13:C16', ['item'] = true, ['ai_add_gold'] = 90 },
	{ ['t'] = 137, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Gymnet', ['default'] = 'Shock Trooper', },
	{ ['t'] = 137, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Dardanian_Pillager', ['default'] = 'Pikeman', },
	{ ['t'] = 139, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dardanian_Warrior', ['default'] = 'Bowman', },
	{ ['t'] = 139, ['d'] = 1, ['side'] = 3, ['x'] = 25, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Hoplite', ['default'] = 'Mage', },
	{ ['t'] = 140, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Teti', ['default'] = 'Fencer', },

	{ ['t'] = 136, ['d'] = 2, ['side'] = 3, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Thracian_Peltast', ['default'] = 'Master at Arms', },
	{ ['t'] = 138, ['d'] = 2, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Peltast', ['default'] = 'Spearman', },

	{ ['t'] = 136, ['d'] = 3, ['side'] = 3, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Teti', ['default'] = 'Footpad', },

	{ ['t'] = 137, ['d'] = 4, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Dioian_Veteran', ['default'] = 'Bandit', },
	
	{ ['t'] = 140, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Strategos', ['default'] = 'Royal Guard', ['beefy'] = 40, ['armored'] = 15, ['calls_for_help'] = true },
	
	{ ['t'] = 134, ['d'] = 6, ['side'] = 2, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_rhy_de_Deadwood', ['default'] = 'Cave Bear', ['buff'] = 'A54:B22:C14:C21:A11', ['ai_add_gold'] = 50 },

	{ ['t'] = 140, ['d'] = 7, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Dioian_Swordmaster', ['default'] = 'Master at Arms', ['buff'] = 'A63:B9:C63:C19', ['allow_random'] = false },

	-- 141 - 147 (mask y 44 - 38)

	{ ['t'] = 142, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_bem_calydonians_Hippikon', ['default'] = 'White Mage', },
	{ ['t'] = 143, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 5, ['type'] = 'QQ_archon_polemarchos', ['default'] = 'QQ_archon_polemarchos', ['buff'] = 'A57:B6:C10', ['recruits'] = 'AE_bem_calydonians_Dardanian_Ravager,AE_bem_calydonians_Dioian_Swordmaster,AE_bem_calydonians_Diarch,AE_bem_calydonians_Thracian_Peltast,AE_bem_calydonians_Rhodian_Slinger,AE_bem_calydonians_Cretan_Toxotes', ['default_recruits'] = 'Master at Arms,Iron Mauler,Master Bowman,Halberdier,Royal Guard,Silver Mage', ['r_lvls'] = '3,3,3,3,3,3', ['recruitment_gold'] = 400, ['recruit_minion'] = 'A63' },
	{ ['t'] = 145, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Dardanian_Ravager', ['default'] = 'Cavalier', },
	{ ['t'] = 145, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Diarch', ['default'] = 'Paladin', ['gold'] = 15 },
	{ ['t'] = 146, ['d'] = 1, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Lightbringer', ['default'] = 'White Mage', },
	
	{ ['t'] = 146, ['d'] = 2, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Calmblade', ['default'] = 'Javelineer', },

	{ ['t'] = 142, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dioian_Swordsman', ['default'] = 'Bowman', },
	{ ['t'] = 144, ['d'] = 3, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Prodromoi', ['default'] = 'Horseman', },
	
	{ ['t'] = 141, ['d'] = 4, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_bem_calydonians_Dardanian_Warrior', ['default'] = 'Mage', },

	{ ['t'] = 147, ['d'] = 5, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Fury', ['default'] = 'Longbowman', },
	
	{ ['t'] = 143, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Rhodian_Slinger', ['default'] = 'Master Bowman', ['buff'] = 'A59:B1:C8:C16', ['gold'] = 30 },
	{ ['t'] = 145, ['d'] = 6, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_bem_calydonians_Hetaroi', ['default'] = 'Grand Knight', },

	{ ['t'] = 144, ['d'] = 7, ['side'] = 3, ['x'] = 17, ['lvl'] = 6, ['type'] = 'QQ_hades_guard', ['default'] = 'QQ_hades_guard', ['buff'] = 'A62:B20:C19' },
	
	-- 148 - 154 (mask y 37 - 31)
	
	{ ['t'] = 148, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Bearver', ['default'] = 'Swamp Lizard', ['guard'] = true, ['buff'] = 'A28:B9:C19:C29:C30' },
	{ ['t'] = 149, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Crusher', ['default'] = 'Shock Trooper', ['beefy'] = 48 },
	{ ['t'] = 150, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Patrol_Captain', ['default'] = 'Lieutenant', ['calls_for_help'] = true, ['gold'] = 20 },
	{ ['t'] = 151, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 4, ['type'] = 'AE_AoA_kingdoms_rovahr_Archbishop_Fighter', ['default'] = 'Grand Marshal', ['recruits'] = 'AE_AoA_kingdoms_rovahr_Templar_Captain,AE_AoA_kingdoms_rovahr_Grand_Inquisitor,AE_AoA_kingdoms_rovahr_Gothic_Kight_On_Foots,AE_AoA_kingdoms_rovahr_Gothic_Knight,AE_AoA_kingdoms_rovahr_Grand_Mage', ['default_recruits'] = 'Master at Arms,Grand Knight,Paladin,Mage of Light,Royal Warrior', ['r_lvls'] = '3,3,3,3,3', ['recruitment_gold'] = 500, ['recruit_minion'] = 'A58' },
	{ ['t'] = 153, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Elementalist', ['default'] = 'Spearman', },
	{ ['t'] = 154, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mag_War_Golem', ['default'] = 'Orcish Crossbowman', },

	{ ['t'] = 152, ['d'] = 2, ['side'] = 4, ['x'] = 16, ['lvl'] = 5, ['type'] = 'QQ_arch_warpriest', ['default'] = 'QQ_arch_warpriest', ['buff'] = 'A55:B36:C51:C44' },
	{ ['t'] = 153, ['d'] = 2, ['side'] = 4, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Glory_Seeker', ['default'] = 'Fencer', },

	{ ['t'] = 148, ['d'] = 3, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_stf_eltireans_Siren', ['default'] = 'Grand Knight', },

	{ ['t'] = 154, ['d'] = 4, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mag_Mystic_Warrior', ['default'] = 'Orcish Slayer', },

	{ ['t'] = 151, ['d'] = 5, ['side'] = 4, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_stf_eltireans_Sky_Lord', ['default'] = 'Great Mage', },

	{ ['t'] = 154, ['d'] = 6, ['side'] = 2, ['x'] = 8, ['lvl'] = 3, ['type'] = 'AE_mag_Sky_Guardian', ['default'] = 'Orcish Nightblade', ['agile'] = 10, ['aggressive'] = 1 },

	{ ['t'] = 150, ['d'] = 7, ['side'] = 4, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_AoA_kingdoms_rovahr_Crossbowman_With_Bulwark', ['default'] = 'Master Bowman', ['buff'] = 'A13:B3:C26:C29:C31' },

	-- 155 - 161 (mask y 30 - 24)

	{ ['t'] = 155, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mag_Aeromancer', ['default'] = 'Orcish Warrior', ['calls_for_help'] = true },
	{ ['t'] = 155, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mag_Golem', ['default'] = 'Young Ogre', },
	{ ['t'] = 156, ['d'] = 1, ['side'] = 2, ['x'] = 5, ['lvl'] = 3, ['type'] = 'AE_mag_Mirrorshield', ['default'] = 'Great Troll', ['beefy'] = 28, ['armored'] = 10 },
	{ ['t'] = 158, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_mrc_avians_Diamondbeak', ['default'] = 'Armageddon Drake', ['beefy'] = 112, ['gold'] = 100 },
	{ ['t'] = 160, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Hawkeye', ['default'] = 'Drake Flare', ['race_guard_off'] = true, },
	{ ['t'] = 161, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Shell', ['default'] = 'Inferno Drake', ['race_guard_off'] = true },

	{ ['t'] = 157, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_mag_Um', ['default'] = 'Orcish Warlord', ['bulky'] = 400, ['beefy'] = 160, ['allow_random'] = false },

	{ ['t'] = 155, ['d'] = 3, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_mag_War_Mage', ['default'] = 'Troll Shaman', },

	{ ['t'] = 156, ['d'] = 4, ['side'] = 2, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_mag_Shadow_Mage', ['default'] = 'Orcish Slurbow', ['buff'] = 'A35:B52:C19:B13' },

	{ ['t'] = 161, ['d'] = 5, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Hummingbird', ['default'] = 'Drake Thrasher', ['race_guard_off'] = true },

	{ ['t'] = 157, ['d'] = 6, ['side'] = 2, ['x'] = 8, ['lvl'] = 3, ['type'] = 'AE_mag_Master_of_Earth', ['default'] = 'Drake Blademaster', ['armored'] = 10, ['aggressive'] = 1 },

	{ ['t'] = 160, ['d'] = 7, ['side'] = 2, ['x'] = 17, ['lvl'] = 6, ['type'] = 'QQ_grand_scholar', ['default'] = 'QQ_grand_scholar', ['buff'] = 'A31:B58:C56' },

	-- 162 - 168 (mask y 23 - 17)

	{ ['t'] = 162, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Passer', ['default'] = 'Drake Warden', ['calls_for_help'] = true, ['fast'] = 3 },
	{ ['t'] = 165, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Shieldmaster', ['default'] = 'Highwayman', ['guard'] = true },
	{ ['t'] = 165, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Shieldmaster', ['default'] = 'Highwayman', ['guard'] = true },
	{ ['t'] = 165, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Inquisitor', ['default'] = 'Assassin', ['beefy'] = 24, ['guard'] = true },
	{ ['t'] = 166, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Infiltrator', ['default'] = 'Bandit', ['race_guard_off'] = true, },
	{ ['t'] = 167, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 4, ['type'] = 'AE_ele_Fallen_Dragon_Rider', ['default'] = 'Yeti', ['guard'] = true, ['buff'] = 'A40:B47:C14', ['disallow_slash_unguardian'] = true },
	{ ['t'] = 168, ['d'] = 1, ['side'] = 3, ['x'] = 9, ['lvl'] = 5, ['type'] = 'AE_ele_Fallen_Supreme_Lord', ['default'] = 'Fire Dragon', ['recruits'] = 'AE_ele_Fallen_Inquisitor,AE_ele_Fallen_Liquidator,AE_ele_Fallen_Purgator', ['default_recruits'] = 'Fugitive,Huntsman,Assassin', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 360, ['recruit_armored'] = 15 },
	{ ['t'] = 168, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Shieldbearer', ['default'] = 'Trapper', ['race_guard_off'] = true },

	{ ['t'] = 163, ['d'] = 4, ['side'] = 4, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Nestguard', ['default'] = 'War Harbinger', ['guard'] = true },
	{ ['t'] = 164, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Egglayer', ['default'] = 'Sky Drake', },

	{ ['t'] = 163, ['d'] = 3, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Bowflurry', ['default'] = 'Drake Enforcer', },
	{ ['t'] = 164, ['d'] = 3, ['side'] = 2, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Raven', ['default'] = 'Drake Blademaster', ['calls_for_help'] = true },
	{ ['t'] = 166, ['d'] = 3, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Infiltrator', ['default'] = 'Outlaw', ['race_guard_off'] = true, },

	{ ['t'] = 163, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Armorpiercer', ['default'] = 'War Harbinger', ['buff'] = 'A45:B20:C36' },
	{ ['t'] = 166, ['d'] = 4, ['side'] = 4, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_mrc_avians_Nestguard', ['default'] = 'Fire Wraith', },

	{ ['t'] = 167, ['d'] = 5, ['side'] = 3, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Decapitator', ['default'] = 'Ranger', ['beefy'] = 40, },
	
	{ ['t'] = 162, ['d'] = 6, ['side'] = 2, ['x'] = 15, ['lvl'] = 3, ['type'] = 'AE_mrc_avians_Nightwing', ['default'] = 'Inferno Drake', },
	{ ['t'] = 168, ['d'] = 6, ['side'] = 3, ['x'] = 12, ['lvl'] = 5, ['type'] = 'QQ_orc_decapitator', ['default'] = 'QQ_orc_decapitator', ['buff'] = 'A1:B20:C19:C55:C31' },

	{ ['t'] = 166, ['d'] = 7, ['side'] = 3, ['x'] = 12, ['lvl'] = 4, ['type'] = 'QQ_terror_hulk', ['default'] = 'QQ_terror_hulk', ['buff'] = 'A3:B6:C19' },

	-- 169 - 175 (mask y 16 - 10)

	{ ['t'] = 171, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 6, ['type'] = 'QQ_blackness', ['default'] = 'QQ_blackness', ['buff'] = 'A37:B37:C46' },
	{ ['t'] = 172, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_mag_Doom_Bringer', ['default'] = 'Death Knight', ['race_guard_off'] = true, },
	{ ['t'] = 175, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 4, ['type'] = 'AE_mag_Fallen_Cyclops_King', ['default'] = 'Ancient Lich', ['recruits'] = 'AE_mag_Apocalypse,AE_mag_Devourer,AE_mag_Atokpi_Charger', ['default_recruits'] = 'Spectre,Ghast,Draug', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 260, ['recruit_minion'] = 'C43' },
	{ ['t'] = 175, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 4, ['type'] = 'AE_mag_Abaddon', ['default'] = 'Skeletal Dragon', ['race_guard_off'] = true, },

	{ ['t'] = 169, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_ele_Fallen_Knight', ['default'] = 'Rogue', },
	
	{ ['t'] = 173, ['d'] = 3, ['side'] = 4, ['x'] = 10, ['lvl'] = 3, ['type'] = 'AE_mag_Crimson_Atokpi', ['default'] = 'Banebow', },

	{ ['t'] = 172, ['d'] = 4, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_mag_Moloch', ['default'] = 'Nightgaunt', ['race_guard_off'] = true, ['bulky'] = 72, ['aggressive'] = 1 },

	{ ['t'] = 175, ['d'] = 5, ['side'] = 4, ['x'] = 14, ['lvl'] = 4, ['type'] = 'AE_mag_Dark_Apostle', ['default'] = 'Skeletal Dragon', ['beefy'] = 200, ['allow_random'] = false },

	{ ['t'] = 169, ['d'] = 6, ['side'] = 3, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_ele_Fallen_Scorch_King', ['default'] = 'Highwayman', },

	{ ['t'] = 174, ['d'] = 7, ['side'] = 4, ['x'] = 12, ['lvl'] = 5, ['type'] = 'QQ_boneblade_terror', ['default'] = 'QQ_boneblade_terror', ['buff'] = 'A20:B40:C40:C51' },

	-- 176 - 182 (mask y 9 - 3) old t=41 - t=47

	{ ['t'] = 176, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 4, ['type'] = 'AE_myh_Librarian', ['default'] = 'Dwarvish Arcanister', ['recruits'] = 'AE_myh_Oathkeeper,AE_myh_Runeforger,AE_myh_Stormbringer', ['default_recruits'] = 'Dwarvish Lord,Dwarvish Dragonguard,Dwarvish Sentinel', ['r_lvls'] = '3,3,3', ['recruitment_gold'] = 320, ['recruit_minion'] = 'A3' },

	{ ['t'] = 176, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 7, ['type'] = 'QQ_harbinger_of_chaos', ['default'] = 'QQ_harbinger_of_chaos', ['buff'] = 'A24:B9:C50:A18', ['allow_random'] = false },

	{ ['t'] = 177, ['d'] = 3, ['side'] = 2, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_myh_Harbinger', ['default'] = 'Dwarvish Runemaster', ['beefy'] = 72 },
	
	{ ['t'] = 177, ['d'] = 4, ['side'] = 2, ['x'] = 20, ['lvl'] = 3, ['type'] = 'AE_myh_Dreadnought', ['default'] = 'Naga Sicarius', ['armored'] = 10, },

	{ ['t'] = 178, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['lvl'] = 5, ['type'] = 'QQ_atronachs', ['default'] = 'QQ_atronachs', ['buff'] = 'A33:B30:C30' },

	{ ['t'] = 176, ['d'] = 6, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_myh_Arbiter', ['default'] = 'Drake Enforcer', ['aggressive'] = 2 },

	{ ['t'] = 177, ['d'] = 7, ['side'] = 2, ['x'] = 25, ['lvl'] = 6, ['type'] = 'QQ_empty_shadow', ['default'] = 'QQ_empty_shadow', ['buff'] = 'A8:B13:C44', },

	-- final boss 33 / mask y 5
	
	{ ['t'] = 180, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 6, ['type'] = 'QQ_adjudicator', ['default'] = 'QQ_adjudicator', ['moves'] = 0, ['final_boss'] = true, ['buff'] = 'A6:B22:C47:C29:B11', },
}


-->>
