hook.Add("InitPostEntityMap", "Adding", function()
	--Fix the props in the map to make them all usable for cading
	for _, ent in pairs(ents.FindByClass("prop_physics")) do
		local pro = ents.Create("prop_physics")
		if pro:IsValid() then
			pro:SetModel(ent:GetModel())
			pro:SetPos(ent:GetPos())
			pro:SetAngles(ent:GetAngles())
			pro:Spawn()
			ent:Remove()
		end
	end
	for _, ent in pairs(ents.FindByClass("prop_physics_multiplayer")) do
		local pro = ents.Create("prop_physics")
		if pro:IsValid() then
			pro:SetModel(ent:GetModel())
			pro:SetPos(ent:GetPos())
			pro:SetAngles(ent:GetAngles())
			pro:Spawn()
			ent:Remove()
		end
	end
	
	--Prevent people getting stuck in between the walls and the gas tanks
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(687, 2720, 61))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_debris/wood_board06a.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(586, 3023, 71))
		ent2:SetAngles(Angle(90, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_debris/wood_board06a.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	
	--World hints
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(-1486, 1292, -80))
		ent:SetParent(self)
		ent:Spawn()
		ent:SetViewable(TEAM_HUMAN)
		ent:SetRange(1000)
		ent:SetHint("Zombies come from here!")
	end
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(-1351, -2464, -80))
		ent:SetParent(self)
		ent:Spawn()
		ent:SetViewable(TEAM_HUMAN)
		ent:SetRange(1000)
		ent:SetHint("Zombies come from here!")
	end

end)

--Start credits hook
--Credits | Please don't remove takes allot of time and effort to fix these maps
--especially since allot of these maps are so old now and unmaintained so do
--the right thing and give credit where it is deserved.
--(By keeping these credits in motivates me to keep fixing maps.)
--Removing or hiding this hook is a violation of the AGPL licensing agreement and the additional conditions. See the LICENSE.txt file that came with the script.
hook.Add("PlayerInitialSpawn", "credits hook", function(ply)
	--Console command to help prevent people from crashing.
	ply:ConCommand("r_drawmodeldecals 0")
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
