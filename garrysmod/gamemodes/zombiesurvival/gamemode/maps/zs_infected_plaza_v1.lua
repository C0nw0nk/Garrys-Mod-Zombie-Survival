hook.Add("InitPostEntityMap", "Adding", function()
		
		--Prevent humans getting stuck between the train and the wall.
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-4984, 800, -150))
			ent2:SetAngles(Angle(90, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-4984, 950, -150))
			ent2:SetAngles(Angle(90, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-4984, 1100, -150))
			ent2:SetAngles(Angle(90, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-4984, 1250, -150))
			ent2:SetAngles(Angle(90, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-4984, 1400, -150))
			ent2:SetAngles(Angle(90, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		--End train fix
		
		--Prevent humans skycading on top of the highest house.
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 2250, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 2400, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 2550, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 2700, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 2850, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 3000, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5050, 3150, 1100))
			ent2:SetAngles(Angle(0, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5110, 2230, 1100))
			ent2:SetAngles(Angle(0, 90, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5250, 2230, 1100))
			ent2:SetAngles(Angle(0, 90, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-5400, 2230, 1100))
			ent2:SetAngles(Angle(0, 90, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		--End house anti skycade.
		
		--World hints
		local ent = ents.Create("point_worldhint")
		if ent:IsValid() then
			ent:SetPos(Vector(-5385, 644, 620))
			ent:SetParent(self)
			ent:Spawn()
			ent:SetViewable(TEAM_HUMAN)
			ent:SetRange(1000)
			ent:SetHint("Zombies come from here!")
		end
		local ent = ents.Create("point_worldhint")
		if ent:IsValid() then
			ent:SetPos(Vector(-3240, 2124, 70))
			ent:SetParent(self)
			ent:Spawn()
			ent:SetViewable(TEAM_HUMAN)
			ent:SetRange(1000)
			ent:SetHint("Zombies come from here!")
		end
		local ent = ents.Create("point_worldhint")
		if ent:IsValid() then
			ent:SetPos(Vector(-2310, -1020, 70))
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
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
