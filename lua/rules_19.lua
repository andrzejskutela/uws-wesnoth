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
	}
end
