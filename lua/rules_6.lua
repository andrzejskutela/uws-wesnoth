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
	hidden_item['x'] = 23
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
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 23, ['y'] = 9, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 20, ['y'] = 6, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 12, ['y'] = 10, ['image'] = 'items/bones.png', ['cat'] = 'decorative', },
	
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 19, ['y'] = 10, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 4 },
	{ ['row'] = 'object', ['t'] = 1, ['x'] = 10, ['y'] = 4, ['cat'] = 'heal', ['image'] = 'items/box.png', ['name'] = "Medicine box", ['amount'] = 6 },
	{ ['row'] = 'object', ['t'] = 3, ['x'] = 21, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 8 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 16, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent", ['amount'] = 10 },
	{ ['row'] = 'object', ['t'] = 6, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'items/ornate1.png', ['name'] = "Wine bottle" },
	{ ['row'] = 'object', ['t'] = 18, ['x'] = 25, ['cat'] = 'heal', ['image'] = 'scenery/leanto.png', ['name'] = "Medic's tent" },
	
	{ ['row'] = 'object', ['t'] = 10, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'items/dummy.png', ['amount'] = 1, ['name'] = 'Armory', ['set'] = 'R4', ['color'] = '#a7b2b5', ['tooltip'] = '+10% physical resistance (100%)' },
	

	{ ['row'] = 'object', ['t'] = 41, ['x'] = 8, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 85 },
	{ ['row'] = 'object', ['t'] = 50, ['x'] = 17, ['cat'] = 'hidden_unit', ['type'] = 'AE_fut_brungar_Undecided_Student', ['type_default'] = 'Peasant', ['message'] = "Hey man! I'm so glad to see someone normal here. Listen, this is insane what is going on here I need to get the hell out of here! If you escort me to the <span color='#8de1f2'>Crystal Forest</span> I will reward you greatly!", ['new_unit_special_id'] = 'rfc_crystal_forest_escort_unit' },
	{ ['row'] = 'object', ['t'] = 56, ['x'] = 8, ['cat'] = 'rune', ['image'] = 'scenery/uws/stone-circle.png', ['amount'] = 2, ['name'] = 'Stone Circle', ['set'] = 'R6,R7', ['color'] = '#a0a2ad', ['tooltip'] = '+10% forest defense (50%)\
+10% hills defense (50%)' },
	{ ['row'] = 'object', ['t'] = 63, ['x'] = 11, ['cat'] = 'decorative', ['image'] = 'halo/monster/stoat-frost-mask.png', ['name'] = 'Town of Ahrenvou' },

	{ ['row'] = 'object', ['t'] = 90, ['x'] = 7, ['image'] = 'halo/elven/druid-healing8.png', ['name'] = 'Crystal Forest', ['cat'] = 'event', ['event'] = 'rfc_3_crystal_forest', },
	{ ['row'] = 'object', ['t'] = 98, ['x'] = 24, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 100 },

	{ ['row'] = 'object', ['t'] = 111, ['x'] = 11, ['image'] = 'scenery/temple-cracked3.png', ['cat'] = 'event', ['event'] = 'rfc_temple', },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['image'] = 'scenery/uws/altar.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'sacrificial_altar' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['image'] = 'scenery/uws/altar-bloody.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bloody_altar' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 6, ['image'] = 'items/bones.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'temple_bones' },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 9, ['cat'] = 'event', ['event'] = 'rfc_altar', },
	{ ['row'] = 'object', ['t'] = 115, ['x'] = 6, ['cat'] = 'event', ['event'] = 'rfc_bones', },
	{ ['row'] = 'object', ['t'] = 130, ['x'] = 20, ['cat'] = 'rune', ['image'] = 'scenery/uws/energy_vortex_alt.png', ['amount'] = 3, ['name'] = 'Rune', ['set'] = 'R12,R13,R14', ['color'] = '#b366ed', ['tooltip'] = '+2 ranged parry (33%)\
+2 ranged accuracy (33% - no effect on magical)\
+1 ranged damage (33%)' },

	{ ['row'] = 'object', ['t'] = 138, ['x'] = 15, ['image'] = 'scenery/tent-fancy-red.png', ['cat'] = 'event', ['event'] = 'rfc_5_shop', },
	{ ['row'] = 'object', ['t'] = 166, ['x'] = 23, ['cat'] = 'rune', ['image'] = 'scenery/nest-full.png', ['amount'] = 2, ['name'] = 'Nest', ['set'] = 'reheal', ['color'] = '#dbbf60', ['tooltip'] = '100% reheal (100%)' },
	


	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Impaler', ['moves'] = 0 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', ['moves'] = 4 },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 11, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0, ['gold'] = 20 },

	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_feu_khaganate_Shieldbearer', ['default'] = 'Heavy Infantryman', ['moves'] = 0 },
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 21, ['y'] = 6, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 11, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 3 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['y'] = 13, ['lvl'] = 0, ['type'] = 'AE_mrc_Blight_Microbe', ['default'] = 'Giant Rat', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 6, ['side'] = 2, ['x'] = 11, ['y'] = 14, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Infected_Hound', ['default'] = 'Thug', ['moves'] = 5 },
	
	-- 2 - 8 (mask y 183 - 177)
	
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Bowman', ['default'] = 'Bowman', ['moves'] = 0 },
	{ ['t'] = 3, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Sergeant', ['recruits'] = 'AE_efm_imperialists_Legionnaire,AE_myh_Legionnaire,AE_imp_Lavinians_Bowman', ['default_recruits'] = 'Thug,Bowman,Spearman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 40, ['gold'] = 40 },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 0, ['type'] = 'AE_imp_Lavinians_Auxiliary', ['default'] = 'Goblin Spearman', },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_feu_khaganate_Rigid', ['default'] = 'Swordsman', ['moves'] = 0 },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 1, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_stf_eventide_Eventide_Herbalist', ['default'] = 'Dune Herbalist', ['allow_random'] = false, },
	
	{ ['t'] = 8, ['d'] = 2, ['side'] = 2, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Goblin Rouser', ['race_guard_off'] = true, ['calls_for_help'] = true },

	{ ['t'] = 8, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Ballista', ['default'] = 'Soulless', ['moves'] = 0 },
	
	{ ['t'] = 8, ['d'] = 4, ['side'] = 2, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_arc_ukians_Attack_Dog', ['default'] = 'Goblin Impaler', ['race_guard_off'] = true },
	
	{ ['t'] = 3, ['d'] = 6, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_mrc_holy_order_Interrogator', ['default'] = 'Heavy Infantryman', ['race_guard_off'] = true, ['beefy'] = 20 },
	
	-- 9 - 15 (mask y 176 - 170)
	
	{ ['t'] = 10, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_mrc_enchanters_Floating_Sword', ['default'] = 'Fencer', ['moves'] = 0 },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'Sergeant', ['default'] = 'Sergeant', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Corporal', ['default'] = 'Sergeant', },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'AE_feu_ceresians_Crossbowman', ['default'] = 'Bowman', },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Field_Ballista', ['default'] = 'Longbowman', ['moves'] = 0, ['gold'] = 10 },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'Bowman', ['default'] = 'Bowman', },
	
	{ ['t'] = 14, ['d'] = 3, ['side'] = 2, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Shifting_Sword', ['default'] = 'Duelist', ['moves'] = 0 },
	
	{ ['t'] = 10, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },
	{ ['t'] = 14, ['d'] = 4, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Elemental_Rune_Interpreter', ['default'] = 'Red Mage', ['disallow_slash_unguardian'] = true },
	
	{ ['t'] = 10, ['d'] = 6, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Light_Infantryman', ['default'] = 'Spearman', ['race_guard_off'] = true },
	
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
	
	{ ['t'] = 19, ['d'] = 6, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_mrc_slavers_Abuser', ['default'] = 'Fugitive', ['race_guard_off'] = true },
	{ ['t'] = 21, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_myh_Light_Spirit', ['default'] = 'Mage', },
	{ ['t'] = 21, ['d'] = 6, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'Spearman', ['default'] = 'Spearman', },
	
	-- 23 - 29 (mask y 162 - 156)
	
	{ ['t'] = 23, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_myh_Earth', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Velite', ['default'] = 'Duelist', },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Earth_Daemon_2', ['default'] = 'Cave Bear', ['guard'] = true },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_imp_Lavinians_Propugnator', ['default'] = 'Shock Trooper', ['guard'] = true },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 9, ['lvl'] = 2, ['type'] = 'Wraith', ['default'] = 'Wraith', ['bulky'] = 32, ['fast'] = 1 },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Flying_Toad', ['default'] = 'Fire Ant', },
	
	{ ['t'] = 24, ['d'] = 2, ['side'] = 4, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_menagerie_Lunar_Stinkbug', ['default'] = 'Giant Mudcrawler', ['race_guard_off'] = true, },
	
	{ ['t'] = 26, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', },
	{ ['t'] = 27, ['d'] = 3, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Knight_of_the_Sun', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 2, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Trapdoor_Spider', ['default'] = 'Swamp Lizard', ['moves'] = 0, },
	{ ['t'] = 26, ['d'] = 4, ['side'] = 4, ['x'] = 6, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', ['agile'] = 10 },
	
	{ ['t'] = 23, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Fencer', },
	{ ['t'] = 24, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Arbalestier', ['default'] = 'Longbowman', },
	
	-- 30 - 36 (mask y 155 - 149)
	
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Hoplite', ['default'] = 'Pikeman', ['bulky'] = 40, ['armored'] = 10 },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_feu_ceresians_Order_Knight', ['default'] = 'Dragoon', ['calls_for_help'] = true, ['race_guard_off'] = true },
	{ ['t'] = 30, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Disciple_of_Eltire', ['default'] = 'Mage', },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_arc_menagerie_Blue_Machinist', ['default'] = 'Outlaw', ['recruits'] = 'AE_arc_menagerie_Cyborg,AE_arc_menagerie_Drone,AE_arc_menagerie_Mechanical_Seeker', ['default_recruits'] = 'Thief,Footpad,Thug', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 75, ['item'] = true },
	{ ['t'] = 31, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_stf_eltireans_Patrol_Captain', ['default'] = 'Lieutenant', },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_myh_Militant', ['default'] = 'Javelineer', ['buff'] = 'A49:B13:C21:C16', ['name'] = 'Badamar the Prison Guard', ['story_message'] = 'The prisoners are escaping! Guards! After them!', ['story_response'] = 'I want the head of this filth!', ['calls_for_help'] = true, ['race_guard_off'] = true },
	
	{ ['t'] = 31, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Spiker', ['default'] = 'Swordsman', },
	{ ['t'] = 35, ['d'] = 2, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Stalwart', ['default'] = 'Swordsman', },
	
	{ ['t'] = 33, ['d'] = 3, ['side'] = 4, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_imperialists_Rock_Rider', ['default'] = 'Shock Trooper', },
	
	{ ['t'] = 30, ['d'] = 4, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_agl_dark_legion_Drone', ['default'] = 'Thug', ['beefy'] = 40, },

	{ ['t'] = 35, ['d'] = 5, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_efm_imperialists_Legionnaire', ['default'] = 'Spearman', },
	{ ['t'] = 36, ['d'] = 5, ['side'] = 2, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_imp_Lavinians_Legionaire', ['default'] = 'Spearman', },
	
	{ ['t'] = 33, ['d'] = 6, ['side'] = 2, ['x'] = 25, ['lvl'] = 2, ['type'] = 'AE_mrc_enchanters_Magic_Sword', ['default'] = 'Duelist', ['armored'] = 10 },


	-- 37 - 43 (mask y 148 - 142)
	
	{ ['t'] = 37, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, },
	{ ['t'] = 38, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'Giant Ant', ['default'] = 'Giant Ant', ['guard'] = true, },
	{ ['t'] = 39, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_rhy_fh_Beaver', ['default'] = 'Mudcrawler', ['guard'] = true },
	{ ['t'] = 42, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Shaman', ['default'] = 'Elvish Shaman', },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Deerrider', ['default'] = 'Elvish Scout', },
	{ ['t'] = 43, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 20, ['guard'] = true, ['disallow_slash_unguardian'] = true, },
	
	{ ['t'] = 39, ['d'] = 2, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_bear_cub', ['default'] = 'Fire Ant', ['guard'] = true, },
	{ ['t'] = 40, ['d'] = 4, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'Fire Ant', ['default'] = 'Fire Ant', },

	{ ['t'] = 40, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Young_Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	
	{ ['t'] = 40, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_mie_vampire_bounty_hunter', ['default'] = 'Footpad', },
	
	{ ['t'] = 41, ['d'] = 5, ['side'] = 2, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Archer', ['default'] = 'Poacher', ['guard'] = true, },

	{ ['t'] = 41, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Rider', ['default'] = 'Elder Falcon', },
	
	-- 44 - 50 (mask y 141 - 135)     old t=5 to t=11

	{ ['t'] = 44, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_rhy_fh_Axethrower', ['default'] = 'Elvish Fighter', ['guard'] = true },
	{ ['t'] = 45, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Gnome_Mage', ['default'] = 'Mage', ['recruits'] = 'AE_rhy_fh_Archer,AE_rhy_fh_Axethrower,AE_rhy_fh_Shaman', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 110, ['recruit_minion'] = 'C30' },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Leshi', ['default'] = 'Elvish Druid', ['gold'] = 20, },
	{ ['t'] = 48, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_ext_monsters_Water_Snake', ['default'] = 'Naga Fighter', },
	{ ['t'] = 49, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', ['race_guard_off'] = true, },
	{ ['t'] = 50, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Queen', ['default'] = 'Naga Warrior', ['recruits'] = 'AE_mrc_hive_Beetle,AE_mrc_hive_Mosquito,AE_mrc_hive_Swarm', ['default_recruits'] = 'Naga Dirkfang,Naga Fighter,Naga Guard', ['r_lvls'] = '1,1,1', ['recruitment_gold'] = 120, ['recruit_minion'] = 'D2' },
	
	{ ['t'] = 49, ['d'] = 2, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_bem_wood_warriors_Carnivore_Plant', ['default'] = 'Elvish Fighter', ['race_guard_off'] = true, },

	{ ['t'] = 46, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_rhy_fd_Giant', ['default'] = 'Young Ogre', ['race_guard_off'] = true, ['bulky'] = 40 },

	{ ['t'] = 49, ['d'] = 4, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Drone', ['default'] = 'Naga Fighter', ['agile'] = 5 },

	{ ['t'] = 46, ['d'] = 5, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Firefly', ['default'] = 'Naga Guard', },

	{ ['t'] = 49, ['d'] = 6, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Naga Guard', ['beefy'] = 24, },

	-- 51 - 56 (mask y 134 - 128)

	{ ['t'] = 52, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_yokai_Kodama', ['default'] = 'Wose Shaman', ['guard'] = true, },
	{ ['t'] = 53, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'Wolf', ['default'] = 'Wolf', ['guard'] = true, },
	{ ['t'] = 55, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_mie_thelian_guardian', ['default'] = 'Elvish Champion', ['guard'] = true },
	{ ['t'] = 56, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_agl_yokai_Medusa_Witch', ['default'] = 'Wild Wyvern', ['race_guard_off'] = true, ['calls_for_help'] = true },

	{ ['t'] = 56, ['d'] = 2, ['side'] = 4, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_mh_Stonegolem', ['default'] = 'Ogre', ['guard'] = true, },

	{ ['t'] = 51, ['d'] = 3, ['side'] = 4, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_rhy_ey_Waterpixie', ['default'] = 'Elder Falcon', },

	{ ['t'] = 52, ['d'] = 4, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_rhy_ey_Nymph', ['default'] = 'Water Serpent', ['guard'] = true, },

	{ ['t'] = 55, ['d'] = 5, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', },

	{ ['t'] = 54, ['d'] = 6, ['side'] = 3, ['x'] = 24, ['lvl'] = 2, ['type'] = 'AE_bem_wood_warriors_Fatal_Tangle', ['default'] = 'Wose Shaman', ['buff'] = 'A29:B15:C43:C21', },


	-- 57 - 63 (mask y 127 - 121)

	{ ['t'] = 57, ['d'] = 1, ['side'] = 2, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_feral', ['default'] = 'Elvish Fighter', ['guard'] = true, ['fast'] = 1 },
	{ ['t'] = 58, ['d'] = 1, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['agile'] = 10 },
	{ ['t'] = 58, ['d'] = 1, ['side'] = 2, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_warrior', ['default'] = 'Elvish Fighter', ['beefy'] = 24 },
	{ ['t'] = 59, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 1, ['type'] = 'Wose', ['default'] = 'Wose', ['bulky'] = 40, ['guard'] = true },
	{ ['t'] = 60, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_myh_Water', ['default'] = 'Elder Falcon', ['race_guard_off'] = true, },
	{ ['t'] = 61, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 3, ['type'] = 'AE_rhy_fh_Forestking', ['default'] = 'Elvish High Lord', ['recruits'] = 'AE_mie_thelian_shaman,AE_mie_thelian_hunter,AE_mie_thelian_deer_rider,AE_rhy_fd_Giant,AE_rhy_fd_Gnome_Musican', ['default_recruits'] = 'Elvish Fighter,Elvish Archer,Elvish Shaman,Elvish Scout,Mage', ['r_lvls'] = '1,1,1,1,1', ['recruitment_gold'] = 180, },
	{ ['t'] = 62, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Wose Shaman', ['default'] = 'Wose Shaman', ['bulky'] = 100, ['event'] = 'follow_players_race', ['race_guard_off'] = true },
	{ ['t'] = 63, ['d'] = 1, ['side'] = 2, ['x'] = 9, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_shaman', ['default'] = 'Elvish Shaman', },

	{ ['t'] = 62, ['d'] = 2, ['side'] = 2, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_spirit', ['default'] = 'Elvish Scout', ['aggressive'] = 2, },

	{ ['t'] = 59, ['d'] = 3, ['side'] = 2, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_rhy_fh_Healer', ['default'] = 'Elvish Sorceress', },
	{ ['t'] = 63, ['d'] = 3, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_deerstalker', ['default'] = 'Elvish Ranger', ['disallow_slash_unguardian'] = true, },

	{ ['t'] = 63, ['d'] = 4, ['side'] = 2, ['x'] = 6, ['lvl'] = 1, ['type'] = 'AE_mie_thelian_wolf', ['default'] = 'Bay Horse', },


	{ ['t'] = 60, ['d'] = 6, ['side'] = 2, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_mie_thelian_chieftain', ['default'] = 'Elvish Captain', ['bulky'] = 32, ['beefy'] = 20, ['ai_add_gold'] = 70, },


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

	{ ['t'] = 65, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_berserker_golem', ['default'] = 'Dwarvish Berserker', ['calls_for_help'] = true },
	{ ['t'] = 69, ['d'] = 5, ['side'] = 3, ['x'] = 21, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 70, ['d'] = 5, ['side'] = 3, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },

	{ ['t'] = 68, ['d'] = 6, ['side'] = 2, ['x'] = 18, ['lvl'] = 2, ['type'] = 'Great Wolf', ['default'] = 'Great Wolf', ['fast'] = 1 },
	{ ['t'] = 70, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_big_ice_golem', ['default'] = 'Dwarvish Steelclad', ['bulky'] = 48, },


	-- 71 - 77 (mask y 113 - 107)    old t=0 to t=4

	{ ['t'] = 71, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_gunner', ['default'] = 'Dwarvish Stalwart', ['guard'] = true, ['armored'] = 20 },
	{ ['t'] = 74, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_mage', ['default'] = 'Dwarvish Pathfinder', ['bulky'] = 20, },
	{ ['t'] = 74, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },
	{ ['t'] = 75, ['d'] = 1, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_fighter', ['default'] = 'Dwarvish Thunderer', },

	{ ['t'] = 77, ['d'] = 2, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_gunner_master', ['default'] = 'Dwarvish Sentinel', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['armored'] = 30, ['gold'] = 20 },
	
	{ ['t'] = 77, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_rider', ['default'] = 'Dwarvish Ulfserker', ['beefy'] = 40 },
	
	{ ['t'] = 72, ['d'] = 4, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_flying_golem', ['default'] = 'Gryphon Rider', ['agile'] = 15 },

	{ ['t'] = 72, ['d'] = 5, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_frozen_frost_spearman', ['default'] = 'Dwarvish Fighter', },


	-- 78 - 84 (mask y 106 - 100)

	{ ['t'] = 79, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_witch', ['default'] = 'Dwarvish Thunderguard', ['recruits'] = 'AE_agl_frozen_frost_fighter,AE_agl_frozen_frost_rider,AE_agl_frozen_frost_student,AE_agl_frozen_ice_golem', ['default_recruits'] = 'Dwarvish Fighter,Dwarvish Guardsman,Dwarvish Scout,Dwarvish Thunderer', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 110, ['recruit_armored'] = 20, ['gold'] = 75 },
	{ ['t'] = 80, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_fury_shooter', ['default'] = 'Dwarvish Dragonguard', ['guard'] = true, ['disallow_slash_unguardian'] = true },
	{ ['t'] = 82, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', ['race_guard_off'] = true },
	{ ['t'] = 84, ['d'] = 1, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Matriarch', ['default'] = 'Troll Shaman', ['guard'] = true, ['calls_for_help'] = true },
	{ ['t'] = 84, ['d'] = 1, ['side'] = 4, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Priestress_of_the_Vault', ['default'] = 'Skeleton', ['armored'] = 10, ['gold'] = 10 },

	{ ['t'] = 84, ['d'] = 2, ['side'] = 4, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Troll Whelp', },

	{ ['t'] = 78, ['d'] = 3, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_agl_frozen_frost_lanceman', ['default'] = 'Dwarvish Runesmith', ['gold'] = 10 },

	{ ['t'] = 84, ['d'] = 4, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Black_Tyrhai', ['default'] = 'Troll Hero', ['bulky'] = 60, },


	{ ['t'] = 80, ['d'] = 6, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_agl_frozen_frost_lance_master', ['default'] = 'Dwarvish Runemaster', ['armored'] = 20, },


	-- 85 - 91 (mask y 98 - 92 - something is off somewhere)

	{ ['t'] = 85, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Night_Maiden', ['default'] = 'Ghoul', },
	{ ['t'] = 87, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Phade', ['default'] = 'Great Icemonax', },
	{ ['t'] = 87, ['d'] = 1, ['side'] = 4, ['x'] = 13, ['lvl'] = 1, ['type'] = 'AE_dep_deep_greater_wisp', ['default'] = 'Orcish Assassin', ['guard'] = true },
	{ ['t'] = 89, ['d'] = 1, ['side'] = 4, ['x'] = 17, ['lvl'] = 3, ['type'] = 'AE_agl_deep_Patroness', ['default'] = 'Great Troll', ['recruits'] = 'AE_agl_deep_Bloodmaiden,AE_agl_deep_Tyrhai_Rider,AE_agl_deep_Lidh,AE_agl_deep_Priestress_of_the_Vault', ['default_recruits'] = 'Troll Whelp,Young Ogre,Ghost,Ghoul', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 110, ['recruit_minion'] = 'D1' },
	{ ['t'] = 89, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_dep_deep_wisp', ['default'] = 'Icemonax', },
	{ ['t'] = 91, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['beefy'] = 40, ['fast'] = 1 },

	{ ['t'] = 90, ['d'] = 2, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Soldier', ['default'] = 'Deathblade', ['guard'] = true },

	{ ['t'] = 86, ['d'] = 3, ['side'] = 4, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Minotaur', ['default'] = 'Troll', ['guard'] = true, ['beefy'] = 40 },
	{ ['t'] = 87, ['d'] = 3, ['side'] = 4, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Lidh', ['default'] = 'Young Ogre', },

	{ ['t'] = 88, ['d'] = 4, ['side'] = 4, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_agl_deep_Tyrhai_Rider', ['default'] = 'Giant Mudcrawler', },
	
	{ ['t'] = 90, ['d'] = 6, ['side'] = 4, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_agl_deep_Elthare', ['default'] = 'Ogre', ['buff'] = 'A46:B51:C32:C21', },


	-- 92 - 98 (mask y 94 - 88)

	{ ['t'] = 92, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', ['bulky'] = 12, ['agile'] = 10, },
	{ ['t'] = 94, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Widow', ['default'] = 'Dark Adept', },
	{ ['t'] = 95, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Stone_Soldier', ['default'] = 'Shadow', },
	{ ['t'] = 95, ['d'] = 1, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_arc_despair_Officer', ['default'] = 'Necromancer', ['recruits'] = 'Shadow,Wraith,Deathblade,Bone Shooter,Necrophage', ['default_recruits'] = 'Shadow,Wraith,Deathblade,Bone Shooter,Necrophage', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 150, },
	
	{ ['t'] = 96, ['d'] = 2, ['side'] = 2, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_arc_despair_Banshee', ['default'] = 'Death Knight', },

	{ ['t'] = 93, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Black_Shadow', ['default'] = 'Wraith', ['bulky'] = 36, ['beefy'] = 68 },

	{ ['t'] = 92, ['d'] = 4, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'AE_arc_despair_Fright', ['default'] = 'Ghost', },
	{ ['t'] = 94, ['d'] = 4, ['side'] = 2, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_arc_despair_Midnight_Beauty', ['default'] = 'Dark Sorcerer', },

	{ ['t'] = 96, ['d'] = 5, ['side'] = 2, ['x'] = 21, ['lvl'] = 4, ['type'] = 'QQ_dark_witness', ['default'] = 'QQ_dark_witness', ['buff'] = 'A13:B7:C49', ['allow_random'] = false },

	{ ['t'] = 97, ['d'] = 6, ['side'] = 2, ['x'] = 22, ['lvl'] = 3, ['type'] = 'Nightgaunt', ['default'] = 'Nightgaunt', ['aggressive'] = 2, ['allow_random'] = false },


	-- 99 - 105 (mask y 87 - 81)

	{ ['t'] = 99, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Saurian Skirmisher', },
	{ ['t'] = 100, ['d'] = 1, ['side'] = 3, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Web_Spitter', ['default'] = 'Swamp Lizard', ['guard'] = true },
	{ ['t'] = 102, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Water Serpent', ['guard'] = true },
	{ ['t'] = 104, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Saber_Cat', ['default'] = 'Saurian Flanker', ['guard'] = true, ['buff'] = 'A20:B9:C11' },
	
	{ ['t'] = 101, ['d'] = 2, ['side'] = 3, ['x'] = 11, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', },
	
	{ ['t'] = 100, ['d'] = 3, ['side'] = 3, ['x'] = 19, ['lvl'] = 1, ['type'] = 'AE_mrc_hive_Swarm', ['default'] = 'Giant Scorpion', ['guard'] = true, },
	
	{ ['t'] = 99, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Piper', ['default'] = 'Saurian Augur', },
	{ ['t'] = 103, ['d'] = 4, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Charmer', ['default'] = 'Saurian Oracle', ['calls_for_help'] = true, ['race_guard_off'] = true },

	{ ['t'] = 105, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 3, ['type'] = 'AE_efm_pygmies_Lizard_Eye', ['default'] = 'Saurian Javelineer', ['agile'] = 10 },
	
	{ ['t'] = 105, ['d'] = 6, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Crocodile', ['default'] = 'Saurian Skirmisher', ['beefy'] = 60, ['armored'] = 20 },
	
	-- 106 - 112 (mask y 80 - 74) old t=2 to t=8

	{ ['t'] = 106, ['d'] = 1, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_efm_pygmies_Knat', ['default'] = 'Giant Rat', },
	{ ['t'] = 106, ['d'] = 1, ['side'] = 3, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 108, ['d'] = 1, ['side'] = 3, ['x'] = 12, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Swamp_Witch', ['default'] = 'Giant Scorpion', },
	{ ['t'] = 108, ['d'] = 1, ['side'] = 3, ['x'] = 21, ['lvl'] = 0, ['type'] = 'AE_mrc_hive_Gnat', ['default'] = 'Giant Rat', },
	{ ['t'] = 109, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Puma', ['default'] = 'Saurian Augur', ['guard'] = true,  },
	{ ['t'] = 110, ['d'] = 1, ['side'] = 3, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 111, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_chs_chaos_empire_Armageddon_Imp', ['default'] = 'Wyvern Rider', ['recruits'] = 'AE_mrc_hive_Drone,AE_mrc_hive_Mosquito,AE_mrc_hive_Swarm,AE_mrc_hive_Spider,AE_mrc_hive_Hopper', ['default_recruits'] = 'Saurian Augur,Saurian Skirmisher,Giant Scorpion,Giant Mudcrawler', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 160, ['gold'] = 60, ['armored'] = 20 },
	
	{ ['t'] = 107, ['d'] = 2, ['side'] = 3, ['x'] = 22, ['lvl'] = 1, ['type'] = 'AE_efm_pygmies_Fly', ['default'] = 'Rock Scorpion',  },
	
	{ ['t'] = 109, ['d'] = 3, ['side'] = 3, ['x'] = 22, ['lvl'] = 2, ['type'] = 'AE_mrc_hive_Infest', ['default'] = 'Swamp Lizard', ['guard'] = true, ['agile'] = 15, ['allow_random'] = false },
	{ ['t'] = 110, ['d'] = 3, ['side'] = 3, ['x'] = 23, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 110, ['d'] = 3, ['side'] = 3, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Toad_Breath', ['default'] = 'Saurian Oracle', },
	
	{ ['t'] = 108, ['d'] = 4, ['side'] = 3, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Mudfoot', ['default'] = 'Saurian Soothsayer', },
	{ ['t'] = 112, ['d'] = 4, ['side'] = 3, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Great_Spider', ['default'] = 'Saurian Ambusher', },
	
	{ ['t'] = 110, ['d'] = 6, ['side'] = 3, ['x'] = 10, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, },
	{ ['t'] = 111, ['d'] = 6, ['side'] = 3, ['x'] = 19, ['lvl'] = 0, ['type'] = 'AE_mag_Swamp_Spirit', ['default'] = 'QQ_Kamikaze', ['allow_random'] = false, ['beefy'] = 160 },
	{ ['t'] = 112, ['d'] = 6, ['side'] = 3, ['x'] = 21, ['lvl'] = 2, ['type'] = 'AE_efm_pygmies_Wyrd', ['default'] = 'Saurian Ambusher', },

	
	-- final boss 33 / mask y 5
	
	{ ['t'] = 180, ['d'] = 1, ['side'] = 2, ['x'] = 26, ['lvl'] = 2, ['type'] = 'AE_myh_Militant', ['default'] = 'Javelineer', ['buff'] = 'A28:B13:C21:C16', ['moves'] = 0, ['final_boss'] = true, },
}


-->>
