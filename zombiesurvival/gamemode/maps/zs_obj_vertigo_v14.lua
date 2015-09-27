--Start Map hook
hook.Add("InitPostEntityMap", "Adding", function()

	--Simple timer that would only run once one second after map starts
	timer.Simple( 1, function()
		--Add Silencer SMG when you get past the valves
		local ent2 = ents.Create("weapon_zs_silencer")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-230, 788, 640))
			ent2:Spawn()
		end
		
		--Replace Owen's handgun with a Deagle
		for _, ent in pairs(ents.FindByModel("models/weapons/w_pistol.mdl")) do
			--Remove the existing Owen's handgun in the map
			ent:Remove()
			--Spawn deagle in its old position
			local ent2=ents.Create("weapon_zs_deagle")
			if ent2:IsValid() then
				ent2:SetPos(ent:GetPos())
				ent2:SetAngles(ent:GetAngles())
				ent2:Spawn()
			end
		end		
		
		--Remove the door that traps people inside a room on top of the scaffolding (What was the point of this?)
		for _, ent in pairs(ents.FindByModel("*176")) do
			ent:Remove()
		end
		
		--Prevent humans sitting on top of the fence when they call for the helicopter (You are suppose to barricade inside the room)
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1622, -1500, 990))
			ent2:SetAngles(Angle(160, 60, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1752, -1440, 990))
			ent2:SetAngles(Angle(160, 60, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1902, -1360, 990))
			ent2:SetAngles(Angle(160, 63, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2022, -1300, 990))
			ent2:SetAngles(Angle(160, 60, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2152, -1240, 990))
			ent2:SetAngles(Angle(160, 60, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2230, -1120, 990))
			ent2:SetAngles(Angle(160, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2230, -1020, 990))
			ent2:SetAngles(Angle(160, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2230, -920, 990))
			ent2:SetAngles(Angle(160, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2230, -370, 990))
			ent2:SetAngles(Angle(160, 0, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-2110, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1950, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1790, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1650, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1490, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1350, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1190, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1050, -310, 990))
			ent2:SetAngles(Angle(160, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-979, -300, 990))
			ent2:SetAngles(Angle(150, 270, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-600, -1550, 990))
			ent2:SetAngles(Angle(150, 90, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-750, -1550, 990))
			ent2:SetAngles(Angle(150, 90, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-530, -1460, 1180))
			ent2:SetAngles(Angle(150, 180, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		--End blocking fence camping
		
		--Prevent skipping climbing through the rocks via the hole in the right wall (It's time people follow the intended path)
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-290, 1287, 2150))
			ent2:SetAngles(Angle(0, 90, 90))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		
		--Prevent players being throw of the scaffolding by crouch jumping.
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2:SetPos(Vector(-1570, 530, 2090))
			ent2:SetAngles(Angle(0, 80, 0))
			ent2:SetKeyValue("solid", "6")
			ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
			ent2:SetNoDraw(true)
			ent2:Spawn()
		end
		
	--End simple timer
	end)
	
	--Timer runs in loop every second
	timer.Create("Slay players delaying, spawn camping and prevent griefing", 1, 0, function()
	
	--Prevent players climbing up from the human spawn area trying to advance spawns.
	local posMin = Vector(-1664.7510986328, 655.96875, 262.57751464844)
	local posMax = Vector(-2238.8171386719, -303.96875, 418.92495727539)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		if v:IsPlayer() then
			if (v:Alive()) then
				v:Kill()
				v:SetTeam(TEAM_UNDEAD)
			end
		end
	end
	local posMin = Vector(-2640.03125, -1198.7392578125, 262.57751464844)
	local posMax = Vector(-2256.03125, 1550.6047363281, 418.92495727539)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		if v:IsPlayer() then
			if (v:Alive()) then
				v:Kill()
				v:SetTeam(TEAM_UNDEAD)
			end
		end
	end
	
	--Prevent trolling at the valves by throwing the valve up into the next area
	local posMin = Vector(-943.38604736328, 1023.2670898438, 767.96875)
	local posMax = Vector(-176.10440063477, 672.08557128906, 608.03125)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		if (v:GetModel() == "models/props_pipes/valvewheel001.mdl") then
			v:SetPos(Vector(-348, 900, 367))
			v:Spawn()
		end
	end
	
	--Door way at valves with alarm trigger kill anyone on lower floors where zombies can't get to them. (Forces zombies behind to stick with the group of survivors)
	local posMin = Vector(-3621.0952148438, 3167.96875, 432.03125)
	local posMax = Vector(927.96875, -1065.2985839844, 6010.6059570313)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		--Find out if entity inside the box is a player
		if v:IsPlayer() then
			--Make sure the player is not free roaming while dead / spectating
			if v:GetObserverMode() != 0 then
			--Do nothing
			else
				--Make sure the wave is active and not a intermission (fucking crows)
				if GetGlobalBool("waveactive") == true then
					--Get information on all players
					for _, ent in pairs(player.GetAll()) do
						--Make sure the player is alive first
						if (ent:Alive()) then
							--Kill all players who are lower than this level in the map
							if ent:GetPos().z < 200 then
								--Kill the player
								ent:Kill()
								--Put them on the zombie team
								ent:SetTeam(TEAM_UNDEAD)
							end
						end
					end
				end
			end
		end
	end
	
	--Blow up fire extinguisher on the wall kill anyone lower than the scaffolding (Forces zombies behind to stick with the group of survivors)
	local posMin = Vector(-3621.0952148438, 3167.96875, 2220.06640625)
	local posMax = Vector(927.96875, -1065.2985839844, 6010.6059570313)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		--Find out if entity inside the box is a player
		if v:IsPlayer() then
			--Make sure the player is not free roaming while dead / spectating
			if v:GetObserverMode() != 0 then
			--Do nothing
			else
				--Make sure the wave is active and not a intermission (fucking crows)
				if GetGlobalBool("waveactive") == true then
					--Get information on all players
					for _, ent in pairs(player.GetAll()) do
						--Make sure the player is alive first
						if (ent:Alive()) then
							--Kill all players who are lower than this level in the map
							if ent:GetPos().z < 1300 then
								--Kill the player
								ent:Kill()
								--Put them on the zombie team
								ent:SetTeam(TEAM_UNDEAD)
							end
						end
					end
				end
			end
		end
	end
	
	--Climb of desk through hole in celling kill people still on lower floors under that hole. (Forces zombies behind to stick with the group of survivors)
	local posMin = Vector(-3621.0952148438, 3167.96875, 2540.06640625)
	local posMax = Vector(927.96875, -1065.2985839844, 6010.6059570313)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		--Find out if entity inside the box is a player
		if v:IsPlayer() then
			--Make sure the player is not free roaming while dead / spectating
			if v:GetObserverMode() != 0 then
			--Do nothing
			else
				--Make sure the wave is active and not a intermission (fucking crows)
				if GetGlobalBool("waveactive") == true then
					--Get information on all players
					for _, ent in pairs(player.GetAll()) do
						--Make sure the player is alive first
						if (ent:Alive()) then
							--Kill all players who are lower than this level in the map
							if ent:GetPos().z < 2340 then
								--Kill the player
								ent:Kill()
								--Put them on the zombie team
								ent:SetTeam(TEAM_UNDEAD)
							end
						end
					end
				end
			end
		end
	end
	
	--Roof at end slay all below the roof level of the map (Forces zombies behind to stick with the group of survivors)
	local posMin = Vector(-3621.0952148438, 3167.96875, 5200.06640625)
	local posMax = Vector(927.96875, -1065.2985839844, 6010.6059570313)
	for k,v in pairs(ents.FindInBox(posMin, posMax)) do
		--Find out if entity inside the box is a player
		if v:IsPlayer() then
			--Make sure the player is not free roaming while dead / spectating
			if v:GetObserverMode() != 0 then
			--Do nothing
			else
				--Make sure the wave is active and not a intermission (fucking crows)
				if GetGlobalBool("waveactive") == true then
					--Get information on all players
					for _, ent in pairs(player.GetAll()) do
						--Make sure the player is alive first
						if (ent:Alive()) then
							--Kill all players who are lower than this level in the map
							if ent:GetPos().z < 3950 then
								--Kill the player
								ent:Kill()
								--Put them on the zombie team
								ent:SetTeam(TEAM_UNDEAD)
							end
						end
					end
				end
			end
		end
	end
	
	end)
	--End Timer
end)
--End Hook

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
