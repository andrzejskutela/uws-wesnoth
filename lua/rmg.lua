local function get_rmg_meta()
	local filepath = '~add-ons/QQ_Ultimate_Wesnoth_Survival/lua/rmg_meta.lua'
	if filesystem.have_file(filepath, true) then
		return wesnoth.dofile(filepath)
	else
		wesnoth.interface.add_chat_message("ERROR", 'RMG Meta rules are missing')
	end
	
	return nil
end

local function generate_random_map()
	local seed = wesnoth.variables['uws_game.random_map_seed']
	local rmg_meta = get_rmg_meta()

	if rmg_meta == nil then
		return false
	end


end

generate_random_map()
