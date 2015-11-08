hook.Add("InitPostEntityMap", "MapProfile", function()
	--Prevent trolling with batteries and key cards by throwing them out of the map or hiding them
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2110, -780, 310))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2110, -680, 310))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2110, -580, 310))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2110, -480, 310))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2110, -380, 310))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1625, 133, 50))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1760, -1044, 200))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-920, -695, 50))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-920, -595, 50))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1125, 800, 70))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1125, 900, 70))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1125, 1000, 70))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1477, -435, 70))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-935, 890, 260))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1005, 890, 260))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-640, 909, 410))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-640, 750, 410))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-640, 585, 410))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(180, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(12, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-150, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-270, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-370, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-520, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-670, 500, 290))
		ent2:SetAngles(Angle(135, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(110, 1018, 129))
		ent2:SetAngles(Angle(0, 90, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(258, 745, 0))
		ent2:SetAngles(Angle(0, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(258, 745, 100))
		ent2:SetAngles(Angle(0, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-190, 910, 355))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-100, 834, 355))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-190, 834, 355))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-100, 905, 355))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-190, 905, 355))
		ent2:SetAngles(Angle(0, 90, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
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
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
