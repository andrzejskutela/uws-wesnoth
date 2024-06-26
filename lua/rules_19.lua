local arena_mode = wml.variables['uws_game.arena_mode']

if arena_mode == 'instructors' then
	return {
		-- wave 1

		{ ['t'] = 1, ['x'] = 18, ['y'] = 8, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 8, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Mummy', ['default'] = 'Walking Corpse', ['buff'] = 'A29:B16:C4', ['delayed'] = 0 },
		{ ['t'] = 1, ['x'] = 9, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_arc_phantom_Spirit_Dove', ['default'] = 'Giant Ant', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Tomb_Guard', ['default'] = 'Ghoul', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Huntress', ['default'] = 'Skeleton Archer', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 11, ['y'] = 5, ['lvl'] = 0, ['type'] = 'AE_arc_despair_Wisp', ['default'] = 'Vampire Bat', ['delayed'] = 2 },
		{ ['t'] = 1, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Feather_Dancer', ['default'] = 'Ghost', ['delayed'] = 2 },
		{ ['t'] = 1, ['x'] = 10, ['y'] = 3, ['lvl'] = 1, ['type'] = 'AE_arc_phantom_Mummy_Unbound', ['default'] = 'Dark Adept', ['delayed'] = 2, ['item'] = true, ['quiet_buff'] = 'arena_boss' },

		-- wave 2

		{ ['t'] = 6, ['x'] = 18, ['y'] = 8, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 8, ['y'] = 4, ['lvl'] = 0, ['type'] = 'AE_efm_dalefolk_Raven', ['default'] = 'Raven', ['buff'] = 'A24:B17:C9', ['delayed'] = 0 },
		{ ['t'] = 6, ['x'] = 9, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_avians_Pigeon', ['default'] = 'Mermaid Initiate', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_avians_Archer', ['default'] = 'Merman Hunter', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = 'AE_mrc_avians_Jackdaw', ['default'] = 'Merman Brawler', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 11, ['y'] = 5, ['lvl'] = 0, ['type'] = 'AE_FL_natives_Falcon', ['default'] = 'Merman Citizen', ['delayed'] = 2 },
		{ ['t'] = 6, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mrc_avians_Grounded', ['default'] = 'Merman Fighter', ['delayed'] = 2 },
		{ ['t'] = 6, ['x'] = 10, ['y'] = 3, ['lvl'] = 1, ['type'] = 'AE_mrc_avians_Mother', ['default'] = 'Dark Omen', ['delayed'] = 2, ['quiet_buff'] = 'arena_boss' },

		-- wave 3

		{ ['t'] = 12, ['x'] = 13, ['y'] = 5, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 8, ['y'] = 7, ['lvl'] = 1, ['type'] = 'Wolf Rider', ['default'] = 'Wolf Rider', ['buff'] = 'A9:B30:C39', ['delayed'] = 0 },
		{ ['t'] = 12, ['x'] = 10, ['y'] = 8, ['lvl'] = 1, ['type'] = 'AE_arc_khthon_Flying_Toad', ['default'] = 'Sand Scuttler', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 18, ['y'] = 10, ['lvl'] = 1, ['type'] = 'AE_agl_yokai_Rebel_Swarm', ['default'] = 'Woodland Boar', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 14, ['y'] = 4, ['lvl'] = 1, ['type'] = 'AE_mag_Air_Elemental', ['default'] = 'Soulless', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 10, ['y'] = 3, ['lvl'] = 2, ['type'] = 'Firebomb Ant', ['default'] = 'Firebomb Ant', ['delayed'] = 2 },
		{ ['t'] = 12, ['x'] = 8, ['y'] = 5, ['lvl'] = 0, ['type'] = 'Frost Stoat', ['default'] = 'Frost Stoat', ['delayed'] = 2 },
		{ ['t'] = 12, ['x'] = 11, ['y'] = 3, ['lvl'] = 2, ['type'] = 'Grand Dragonfly', ['default'] = 'Grand Dragonfly', ['delayed'] = 2, ['quiet_buff'] = 'arena_boss' },
	}

elseif arena_mode == 'guardians' then
	return {
		-- wave 1

		{ ['t'] = 1, ['x'] = 18, ['y'] = 8, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 8, ['y'] = 4, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['buff'] = '::', ['delayed'] = 0 },
		{ ['t'] = 1, ['x'] = 9, ['y'] = 4, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 1, ['x'] = 11, ['y'] = 5, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 1, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 1, ['x'] = 10, ['y'] = 3, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 2, ['item'] = true, ['quiet_buff'] = 'arena_boss' },

		-- wave 2

		{ ['t'] = 6, ['x'] = 18, ['y'] = 8, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 8, ['y'] = 4, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['buff'] = '::', ['delayed'] = 0 },
		{ ['t'] = 6, ['x'] = 9, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 17, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 13, ['y'] = 6, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 6, ['x'] = 11, ['y'] = 5, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 6, ['x'] = 16, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 6, ['x'] = 10, ['y'] = 3, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 2, ['quiet_buff'] = 'arena_boss' },

		-- wave 3

		{ ['t'] = 12, ['x'] = 13, ['y'] = 5, ['lvl'] = 0, ['type'] = 'QQUWS_surprise', ['allow_random'] = false, ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 8, ['y'] = 7, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['buff'] = '::', ['delayed'] = 0 },
		{ ['t'] = 12, ['x'] = 10, ['y'] = 8, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 18, ['y'] = 10, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 14, ['y'] = 4, ['lvl'] = 1, ['type'] = '', ['default'] = '', ['delayed'] = 0, },
		{ ['t'] = 12, ['x'] = 10, ['y'] = 3, ['lvl'] = 2, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 12, ['x'] = 8, ['y'] = 5, ['lvl'] = 0, ['type'] = '', ['default'] = '', ['delayed'] = 2 },
		{ ['t'] = 12, ['x'] = 11, ['y'] = 3, ['lvl'] = 2, ['type'] = '', ['default'] = '', ['delayed'] = 2, ['quiet_buff'] = 'arena_boss' },
	}
end
