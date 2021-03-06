--Help boost players fps by disabling casting of dynamic shadows.
hook.Add("InitPostEntityMap", "Remove.Shadow.Control", function()
	local shadowexists = 0
	--Disable shadow_control
	for _, ent in pairs(ents.FindByClass("shadow_control")) do
		ent:SetKeyValue("disableallshadows", 1)
		shadowexists = 1
	end
	if shadowexists == 0 then
		local ent = ents.Create("shadow_control")
		if ent:IsValid() then
			ent:SetKeyValue("disableallshadows", 1)
			shadowexists = 1	
		end
	end
	--Remove rain.
	for _, ent in pairs(ents.FindByClass("func_precipitation")) do
		ent:Remove()
	end
	--Remove laggy smoke.
	for _, ent in pairs(ents.FindByClass("func_smokevolume")) do
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
	for _, ent in pairs(ents.FindByClass("env_*")) do
		ent:DrawShadow(false)
		ent:SetKeyValue("disableshadows", 1)
	end
end)
