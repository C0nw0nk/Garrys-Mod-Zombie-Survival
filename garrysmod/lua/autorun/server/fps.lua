--Help boost players fps by disabling casting of dynamic shadows.
hook.Add("InitPostEntityMap", "Remove.Shadow.Control", function()
	--Remove shadow_control
	for _, ent in pairs(ents.FindByClass("shadow_control")) do
		ent:Remove()
	end
end)
--Remove shadows from players when they spawn.
hook.Add("PlayerSpawn", "PlayerSpawn.Remove.Shadows", function(player)
	player:DrawShadow(false)
end)
--Remove and disable shadows on props spawned in func_physbox and doors that have been taken of their hinges etc.
--Think hook only runs when players are on the server.
hook.Add("Think", "Think.Remove.Shadows", function()
	for _, ent in pairs(ents.FindByClass("prop_*")) do
		ent:DrawShadow(false)
		ent:SetKeyValue("disableshadows", 1)
	end
	for _, ent in pairs(ents.FindByClass("func_*")) do
		ent:DrawShadow(false)
		ent:SetKeyValue("disableshadows", 1)
	end
	for _, ent in pairs(ents.FindByClass("item_*")) do
		ent:DrawShadow(false)
		ent:SetKeyValue("disableshadows", 1)
	end
end)
