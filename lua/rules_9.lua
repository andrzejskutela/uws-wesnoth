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

local hidden_u1 = { ['d'] = 3, ['side'] = 2, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Vapor_11', ['default'] = 'Soulless', ['allow_random'] = false, ['moves'] = 4 }
local hidden_u2 = { ['d'] = 5, ['side'] = 2, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Vapor_12', ['default'] = 'Soulless', ['allow_random'] = false, ['moves'] = 4 }
local hidden_ureal1 = { ['d'] = 3, ['side'] = 2, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Tomb_Sentinel', ['default'] = 'Deathblade', ['allow_random'] = false, ['moves'] = 4 }
local hidden_ureal2 = { ['d'] = 5, ['side'] = 2, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Wing_Dancer', ['default'] = 'Bone Shooter', ['allow_random'] = false, ['moves'] = 4 }
local r = mathx.random(1, 4)

if r == 1 then
	hidden_u1['x'] = 22
	hidden_u1['t'] = 6
	
	hidden_u2['x'] = 6
	hidden_u2['t'] = 7
	
	hidden_ureal1['x'] = 11
	hidden_ureal1['t'] = 6
	
	hidden_ureal2['x'] = 16
	hidden_ureal2['t'] = 8
elseif r == 2 then
	hidden_u1['x'] = 16
	hidden_u1['t'] = 8
	
	hidden_u2['x'] = 22
	hidden_u2['t'] = 6
	
	hidden_ureal1['x'] = 6
	hidden_ureal1['t'] = 7
	
	hidden_ureal2['x'] = 11
	hidden_ureal2['t'] = 6
elseif r == 3 then
	hidden_u1['x'] = 11
	hidden_u1['t'] = 6
	
	hidden_u2['x'] = 16
	hidden_u2['t'] = 8
	
	hidden_ureal1['x'] = 22
	hidden_ureal1['t'] = 6
	
	hidden_ureal2['x'] = 6
	hidden_ureal2['t'] = 7
else
	hidden_u1['x'] = 6
	hidden_u1['t'] = 7
	
	hidden_u2['x'] = 11
	hidden_u2['t'] = 6
	
	hidden_ureal1['x'] = 16
	hidden_ureal1['t'] = 8
	
	hidden_ureal2['x'] = 22
	hidden_ureal2['t'] = 6
end

local hidden_event = { ['row'] = 'object', ['cat'] = 'event', ['event'] = 'rfc_4a_bookshelf', }
r = mathx.random(1, 3)

if r == 1 then
	hidden_event['t'] = 22
	hidden_event['x'] = 19
elseif r == 2 then
	hidden_event['t'] = 22
	hidden_event['x'] = 20
else
	hidden_event['t'] = 21
	hidden_event['x'] = 21
end

return {
	-- objects
	
	{ ['row'] = 'object', ['t'] = 9, ['x'] = 7, ['cat'] = 'gold_chest', ['image'] = 'items/chest.png', ['amount'] = 40 },
	{ ['row'] = 'object', ['t'] = 12, ['x'] = 22, ['cat'] = 'rune', ['image'] = 'scenery/uws/energy_vortex.png', ['amount'] = 3, ['name'] = 'Rune', ['set'] = 'R9,R10,R11', ['color'] = '#b366ed', ['tooltip'] = '+2 melee parry (33%)\
+2 melee accuracy (33% - no effect on magical)\
+2 melee damage (33%)' },
	{ ['row'] = 'object', ['t'] = 14, ['x'] = 6, ['image'] = 'scenery/uws/trigger_device.png', ['cat'] = 'event', ['event'] = 'rfc_4a_room', },
	{ ['row'] = 'object', ['t'] = 22, ['x'] = 19, ['image'] = 'scenery/uws/bookshelf-sw.png', ['mirror_image'] = 'scenery/uws/bookshelf.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bookshelf_1' },
	{ ['row'] = 'object', ['t'] = 22, ['x'] = 20, ['image'] = 'scenery/uws/bookshelf-sw.png', ['mirror_image'] = 'scenery/uws/bookshelf.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bookshelf_2' },
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 21, ['image'] = 'scenery/uws/bookshelf-sw.png', ['mirror_image'] = 'scenery/uws/bookshelf.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'bookshelf_3' },
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 18, ['image'] = 'scenery/uws/dragon_statue_left.png', ['mirror_image'] = 'scenery/uws/dragon_statue_right.png', ['cat'] = 'decorative', ['render'] = false, ['id'] = 'dragon_statue' },
	hidden_event,
	{ ['row'] = 'object', ['t'] = 21, ['x'] = 18, ['cat'] = 'event', ['event'] = 'rfc_4a_dragon', },
	{ ['row'] = 'object', ['t'] = 24, ['x'] = 22, ['cat'] = 'heal', ['image'] = 'scenery/well.png', ['name'] = 'Well', ['amount'] = 12 },
	
	-- beginning
	
	{ ['t'] = 1, ['d'] = 1, ['side'] = 1, ['x'] = 24, ['y'] = 8, ['lvl'] = 1, ['type'] = 'AE_stf_eltireans_Disciple_of_Eltire', ['default'] = 'Elvish Shaman', ['allow_random'] = false },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Feather_Dancer', ['default'] = 'Soulless', ['moves'] = 4, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 21, ['y'] = 6, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Tomb_Shield_Guard', ['default'] = 'Revenant', ['moves'] = 3, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['y'] = 4, ['lvl'] = 2, ['type'] = 'Dread Bat', ['default'] = 'Dread Bat', ['moves'] = 5, ['guard'] = true },
	{ ['t'] = 1, ['d'] = 1, ['side'] = 2, ['x'] = 18, ['y'] = 5, ['lvl'] = 2, ['type'] = 'Dread Bat', ['default'] = 'Dread Bat', ['moves'] = 4, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 2, ['side'] = 2, ['x'] = 10, ['y'] = 4, ['lvl'] = 0, ['type'] = 'Vampire Bat', ['default'] = 'Vampire Bat', ['moves'] = 5, ['guard'] = true },
	
	{ ['t'] = 1, ['d'] = 3, ['side'] = 2, ['x'] = 19, ['y'] = 4, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', ['guard'] = true, ['moves'] = 5 },
	
	{ ['t'] = 1, ['d'] = 4, ['side'] = 2, ['x'] = 9, ['y'] = 5, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Tomb_Guard', ['default'] = 'Skeleton', ['moves'] = 4 },
	
	{ ['t'] = 1, ['d'] = 5, ['side'] = 2, ['x'] = 4, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Mummy_Unbound', ['default'] = 'Ghoul', ['moves'] = 3, ['beefy'] = 40, ['armored'] = 20, ['guard'] = true },
	
	-- 2 - 8 (mask y 37 - 31)
	
	{ ['t'] = 2, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Mummy', ['default'] = 'Walking Corpse', ['allow_random'] = false, ['moves'] = 3 },
	{ ['t'] = 2, ['d'] = 1, ['side'] = 2, ['x'] = 20, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Vapor_3', ['default'] = 'Walking Corpse', ['allow_random'] = false, ['moves'] = 4 },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Feather_Dancer', ['default'] = 'Soulless', ['allow_random'] = false, ['moves'] = 5 },
	{ ['t'] = 4, ['d'] = 1, ['side'] = 2, ['x'] = 6, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Spirit_Dove', ['default'] = 'Walking Corpse', ['allow_random'] = false, ['moves'] = 5, },
	{ ['t'] = 5, ['d'] = 1, ['side'] = 2, ['x'] = 17, ['lvl'] = 1, ['type'] = 'Blood Bat', ['default'] = 'Blood Bat', ['guard'] = true, ['moves'] = 5, ['allow_random'] = false },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 14, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Vapor_1', ['default'] = 'Walking Corpse', ['armored'] = 16, ['allow_random'] = false, ['moves'] = 4 },
	{ ['t'] = 6, ['d'] = 1, ['side'] = 2, ['x'] = 16, ['lvl'] = 4, ['type'] = 'AE_arc_phantom_Mummy_Pharo', ['default'] = 'Ancient Lich', ['recruits'] = 'AE_arc_phantom_Feather_Dancer,AE_arc_phantom_Huntress,AE_arc_phantom_Mummy_Unbound,AE_arc_phantom_Spirit_Jay,AE_arc_phantom_Tomb_Guard', ['default_recruits'] = 'Ghost,Ghoul,Skeleton,Skeleton Archer,Soulless', ['r_lvls'] = '1,1,1,1', ['recruitment_gold'] = 120, ['gold'] = 60, ['recruit_armored'] = 16, ['allow_random'] = false },
	{ ['t'] = 8, ['d'] = 1, ['side'] = 2, ['x'] = 8, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Divine_Jay', ['default'] = 'Dread Bat', ['allow_random'] = false, ['moves'] = 6 },
	
	{ ['t'] = 3, ['d'] = 2, ['side'] = 2, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Mummy_Unbound', ['default'] = 'Ghoul', ['allow_random'] = false, ['moves'] = 3 },
	
	{ ['t'] = 5, ['d'] = 3, ['side'] = 2, ['x'] = 20, ['lvl'] = 2, ['type'] = 'Dread Bat', ['default'] = 'Dread Bat', ['guard'] = true, ['agile'] = 8, ['moves'] = 6, ['allow_random'] = false },
	
	{ ['t'] = 4, ['d'] = 4, ['side'] = 2, ['x'] = 19, ['lvl'] = 2, ['type'] = 'AE_arc_phantom_Stalker', ['default'] = 'Bone Shooter', ['allow_random'] = false, ['moves'] = 5 },
	
	{ ['t'] = 6, ['d'] = 5, ['side'] = 2, ['x'] = 15, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Vapor_2', ['default'] = 'Walking Corpse', ['allow_random'] = false, ['moves'] = 5 },
	
	hidden_u1,
	hidden_u2,
	hidden_ureal1,
	hidden_ureal2,
	
	-- 9 - 15 (mask y 30 - 24)
	
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_stf_free_saurians_Tarantula', ['default'] = 'Fire Wraith', ['moves'] = 0, },
	{ ['t'] = 9, ['d'] = 1, ['side'] = 2, ['x'] = 12, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Mummy', ['default'] = 'Walking Corpse', ['allow_random'] = false },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_chs_chaos_empire_Demon_Grunt', ['default'] = 'Drake Arbiter', ['guard'] = true },
	{ ['t'] = 11, ['d'] = 1, ['side'] = 2, ['x'] = 10, ['lvl'] = 2, ['type'] = 'Dread Bat', ['default'] = 'Dread Bat', ['bulky'] = 20, ['fast'] = 1, ['guard'] = true, },
	{ ['t'] = 13, ['d'] = 1, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_chs_chaos_empire_Blood_Imp', ['default'] = 'Fire Drake', ['bulky'] = 60, ['race_guard_off'] = true, },
	{ ['t'] = 14, ['d'] = 1, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Lesser_Mutation', ['default'] = 'Drake Fighter', ['race_guard_off'] = true, },
	{ ['t'] = 15, ['d'] = 1, ['side'] = 3, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Greater_Mutation', ['default'] = 'Drake Thrasher', ['guard'] = true },
	
	{ ['t'] = 10, ['d'] = 2, ['side'] = 2, ['x'] = 20, ['lvl'] = 1, ['type'] = 'AE_myh_Gargoyle', ['default'] = 'Giant Scorpion', ['armored'] = 12, ['guard'] = true },
	{ ['t'] = 14, ['d'] = 2, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_ext_chaos_Lesser_Daemon', ['default'] = 'Drake Burner', ['race_guard_off'] = true, },
	
	{ ['t'] = 12, ['d'] = 3, ['side'] = 2, ['x'] = 23, ['lvl'] = 3, ['type'] = 'AE_arc_phantom_Tomb_Protector', ['default'] = 'Ghast', ['guard'] = true, ['bulky'] = 80, ['beefy'] = 48, ['allow_random'] = false },
	{ ['t'] = 15, ['d'] = 3, ['side'] = 3, ['x'] = 11, ['lvl'] = 1, ['type'] = 'AE_chs_chaos_empire_Imp', ['default'] = 'Drake Clasher', },
	
	{ ['t'] = 11, ['d'] = 4, ['side'] = 2, ['x'] = 8, ['lvl'] = 3, ['type'] = 'AE_arc_phantom_Winged_Warrior', ['default'] = 'Draug', },
	
	{ ['t'] = 13, ['d'] = 5, ['side'] = 3, ['x'] = 9, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Winged_Daemon', ['default'] = 'Fire Drake', ['agile'] = 12, ['race_guard_off'] = true, },
	
	-- 16 - 22 (mask y 23 - 17)
	
	{ ['t'] = 17, ['d'] = 1, ['side'] = 3, ['x'] = 19, ['lvl'] = 4, ['type'] = 'AE_chs_chaos_empire_Demon_Lord', ['default'] = 'Armageddon Drake', ['recruits'] = 'AE_chs_chaos_empire_Blood_Imp,AE_chs_chaos_empire_Demonic_Hound,AE_chs_chaos_empire_Demon_Zephyr,AE_ext_chaos_Daemon,AE_ext_chaos_Doom_Guard', ['default_recruits'] = 'Drake Flare,Fire Drake,Drake Arbiter,Drake Thrasher,Drake Warrior', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 130, ['item'] = true, ['buff'] = 'A13:B14:C30' },
	{ ['t'] = 17, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_mrc_Blight_Blacktide', ['default'] = 'Jinn', ['armored'] = 20, ['guard'] = true, },
	{ ['t'] = 18, ['d'] = 1, ['side'] = 3, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_chs_chaos_empire_Demon_Shapeshifter', ['default'] = 'Drake Warrior', ['buff'] = 'A5:B45:C10:C9' },
	{ ['t'] = 19, ['d'] = 1, ['side'] = 3, ['x'] = 13, ['lvl'] = 3, ['type'] = 'AE_chs_chaos_empire_Gutwrencher_Imp', ['default'] = 'Drake Enforcer', ['guard'] = true, ['disallow_slash_unguardian'] = true, ['bulky'] = 100 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 4, ['x'] = 12, ['lvl'] = 2, ['type'] = 'AE_mag_Dark_Portal', ['default'] = 'Wraith', ['guard'] = true, ['fast'] = 1, ['agile'] = 12 },
	{ ['t'] = 21, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 2, ['type'] = 'AE_myh_Therian_Defender', ['default'] = 'Bandit', ['guard'] = true, ['gold'] = 15 },
	{ ['t'] = 22, ['d'] = 1, ['side'] = 4, ['x'] = 7, ['lvl'] = 0, ['type'] = 'AE_myh_Sky_Shard', ['default'] = 'Ruffian', ['race_guard_off'] = true, ['calls_for_help'] = true, ['event'] = 'follow_players_race' },
	
	{ ['t'] = 16, ['d'] = 2, ['side'] = 3, ['x'] = 17, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Flesh_Hound', ['default'] = 'Drake Warrior', ['race_guard_off'] = true, ['bulky'] = 40 },
	{ ['t'] = 20, ['d'] = 2, ['side'] = 4, ['x'] = 11, ['lvl'] = 2, ['type'] = 'AE_mrc_Blight_Mutilated_Corpse', ['default'] = 'Deathblade', ['race_guard_off'] = true, ['beefy'] = 40 },
	
	{ ['t'] = 19, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_mrc_Blight_Bacterium', ['default'] = 'Rock Scorpion', ['armored'] = 40, ['race_guard_off'] = true },
	
	{ ['t'] = 16, ['d'] = 4, ['side'] = 3, ['x'] = 10, ['lvl'] = 2, ['type'] = 'AE_ext_chaos_Hell_Crab', ['default'] = 'Fire Wraith', ['armored'] = 20, ['bulky'] = 140 },
	
	{ ['t'] = 18, ['d'] = 5, ['side'] = 3, ['x'] = 16, ['lvl'] = 1, ['type'] = 'AE_chs_chaos_empire_Headhunter', ['default'] = 'Drake Fighter', },
	
	-- 23 - 29 (mask y 16 - 10)
	
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 15, ['lvl'] = 2, ['type'] = 'AE_myh_Cobra', ['default'] = 'Outlaw', ['guard'] = true },
	{ ['t'] = 24, ['d'] = 1, ['side'] = 4, ['x'] = 6, ['lvl'] = 2, ['type'] = 'AE_myh_Therian_Mage', ['default'] = 'Trapper', ['beefy'] = 20 },
	{ ['t'] = 25, ['d'] = 1, ['side'] = 4, ['x'] = 10, ['lvl'] = 1, ['type'] = 'AE_myh_Therian_Monk', ['default'] = 'Thief', ['guard'] = true, },
	{ ['t'] = 26, ['d'] = 1, ['side'] = 4, ['x'] = 8, ['lvl'] = 1, ['type'] = 'AE_myh_Therian_Apprentice', ['default'] = 'Thief', },
	{ ['t'] = 27, ['d'] = 1, ['side'] = 4, ['x'] = 20, ['lvl'] = 2, ['type'] = 'AE_myh_Therian_Shaman', ['default'] = 'Trapper', },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 11, ['lvl'] = 4, ['type'] = 'AE_myh_Librarian', ['default'] = 'Grand Marshal', ['recruits'] = 'AE_myh_Aura_Monk,AE_myh_Therian_Tracker,AE_myh_Wildcat,AE_myh_Therian_Mage', ['default_recruits'] = 'Bandit,Outlaw,Rogue,Trapper', ['r_lvls'] = '2,2,2,2', ['recruitment_gold'] = 140, ['gold'] = 100 },
	{ ['t'] = 28, ['d'] = 1, ['side'] = 4, ['x'] = 21, ['lvl'] = 3, ['type'] = 'AE_myh_Therian_Ranger', ['default'] = 'Ranger', ['guard'] = true },
	
	{ ['t'] = 23, ['d'] = 2, ['side'] = 4, ['x'] = 13, ['lvl'] = 2, ['type'] = 'AE_myh_Wildcat', ['default'] = 'Rogue', },
	{ ['t'] = 27, ['d'] = 2, ['side'] = 4, ['x'] = 11, ['lvl'] = 3, ['type'] = 'AE_myh_Aura_Master', ['default'] = 'Huntsman', },
	
	{ ['t'] = 25, ['d'] = 3, ['side'] = 4, ['x'] = 7, ['lvl'] = 1, ['type'] = 'AE_myh_Therian_Hunter', ['default'] = 'Footpad', },
	
	{ ['t'] = 25, ['d'] = 4, ['side'] = 4, ['x'] = 18, ['lvl'] = 2, ['type'] = 'AE_myh_Sandskipper', ['default'] = 'Outlaw', ['fast'] = 1 },
	
	{ ['t'] = 26, ['d'] = 5, ['side'] = 4, ['x'] = 16, ['lvl'] = 2, ['type'] = 'AE_myh_Therian_Defender', ['default'] = 'Bandit', ['armored'] = 16 },
	
	-- 30 - 36 (mask y 9 - 3)
	
	{ ['t'] = 31, ['d'] = 1, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_rhy_ma_Night_Guard', ['default'] = 'Dune Spearguard', ['beefy'] = 56, ['guard'] = true },
	{ ['t'] = 33, ['d'] = 1, ['side'] = 2, ['x'] = 22, ['lvl'] = 4, ['type'] = 'AE_mag_Master_of_Darkness', ['default'] = 'Dune Paragon', ['recruits'] = 'AE_rhy_ma_Spellblade,AE_rhy_ma_Sorcerer,AE_rhy_ma_Longbowman,AE_rhy_ma_Longsword,AE_rhy_ma_Seeker', ['default_recruits'] = 'Dune Scorcher,Dune Alchemist,Dune Explorer,Dune Strider,Dune Swordsman', ['r_lvls'] = '2,2,2,2,2', ['recruitment_gold'] = 150, ['recruit_minion'] = 'A29' },
	
	{ ['t'] = 32, ['d'] = 2, ['side'] = 2, ['x'] = 23, ['lvl'] = 2, ['type'] = 'AE_rhy_ma_Warmonk', ['default'] = 'Dune Strider', ['beefy'] = 24 },
	
	{ ['t'] = 35, ['d'] = 4, ['side'] = 2, ['x'] = 24, ['lvl'] = 3, ['type'] = 'AE_rhy_ma_General', ['default'] = 'Dune Warmaster', ['armored'] = 12 },
	
	-- final boss 36 / mask y 3
	
	{ ['t'] = 36, ['d'] = 1, ['side'] = 2, ['x'] = 25, ['lvl'] = 5, ['type'] = 'QQ_Archwitch', ['default'] = 'QQ_Archwitch', ['moves'] = 0, ['final_boss'] = true, ['buff'] = 'A19:B15:C13:C16', ['allow_random'] = false, ['story_message'] = 'You have displayed a great deal of strength going through these tunnels. Now you will die!', ['story_response'] = 'Stay strong! Stay focused! We got her!', },
}


-->>
