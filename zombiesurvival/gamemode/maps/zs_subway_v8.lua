hook.Add("InitPostEntityMap", "MapProfile", function()
	--Change boss spawn so bosses don't get stuck in the celling
	local ent = ents.Create("info_player_zombie_boss")
	if ent:IsValid() then
		ent:SetPos(Vector(3629, -1640, -415))
		ent:Spawn()
	end
	--Remove the fake suitcases
	for _, ent in pairs(ents.FindByModel("models/props_c17/suitcase001a.mdl")) do
		ent:Remove()
	end
	for _, ent in pairs(ents.FindByModel("models/props_c17/SuitCase_Passenger_Physics.mdl")) do
		ent:Remove()
	end
	
	--Block skycading in the elevator shafts
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(5492, -1483, 210))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(5452, -1483, 210))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(5410, -1483, 210))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(5347, -1483, 210))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	
	
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(684, 78, 373))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(684, 235, 373))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(600, 78, 373))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(600, 235, 373))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
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
