-- sections: s = starting game position, e = end / final boss location, m = middle

-- todo section start / end x dimension to maintain smooth transition between sections

return {
	{ ['id'] = 1, ['file'] = 'TSW_mask.map', ['section'] = 's', ['y_from'] = 80, ['y_layering_edge'] = { 1,2,2,3,2,2,1,1,0,0,0,0,0,1,2,3,3,5,5,6,6 }, ['length'] = 11, ['starting_castle'] = { -10,5 } },
	{ ['id'] = 2, ['file'] = 'TSW_mask.map', ['section'] = 'e', ['y_from'] = 12, ['length'] = 9, ['keep'] = { -15,8 } },
	{ ['id'] = 3, ['file'] = 'TSW_mask.map', ['section'] = 'm', ['y_from'] = 74, ['length'] = { ['min'] = 4, ['max'] = 6 }, },
	{ ['id'] = 4, ['file'] = 'TSW_mask.map', ['section'] = 'm', ['y_from'] = 27, ['length'] = { ['min'] = 5, ['max'] = 7 }, },
	
}
