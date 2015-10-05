hook.Add("InitPostEntityMap", "Adding", function()
	timer.Simple( 1, function()
		--Move Stalker M4 from previous area to a closer unused room
		for _, ent in pairs(ents.FindByModel("models/weapons/w_rif_m4a1.mdl")) do
			ent:Remove()
		end
		local ent2 = ents.Create("weapon_zs_m4")
		if ent2:IsValid() then
			ent2:SetPos(Vector(4767, 832, -287))
			ent2:Spawn()
		end
		--Spawn arsenal crate inside room at top of stair case.
		local ent2 = ents.Create("weapon_zs_arsenalcrate")
		if ent2:IsValid() then
			ent2:SetPos(Vector(6395, -1036, -340))
			ent2:SetModel(Model("models/Items/item_item_crate.mdl"))
			ent2:Spawn()
		end
		--Spawn arsenal next to sweeper at end
		local ent2 = ents.Create("prop_arsenalcrate")
		if ent2:IsValid() then
			ent2:SetPos(Vector(9813, -1825, -415))
			ent2:SetModel(Model("models/Items/item_item_crate.mdl"))
			ent2:Spawn()
		end
		
		--Add some extra props for cading at the button to open blast doors
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(7697, -233, -230))
			ent2:SetModel(Model("models/props_c17/oildrum001.mdl"))
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(7389, -271, -230))
			ent2:SetModel(Model("models/props_c17/bench01a.mdl"))
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(7389, -271, -190))
			ent2:SetModel(Model("models/props_c17/bench01a.mdl"))
			ent2:Spawn()
		end
		
		--Add some extra barrels for cading at the end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(9697, -1201, -390))
			ent2:SetModel(Model("models/props_c17/oildrum001.mdl"))
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(9650, -1201, -390))
			ent2:SetModel(Model("models/props_c17/oildrum001.mdl"))
			ent2:Spawn()
		end
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
			ent2=ents.Create("prop_physics")
			ent2:SetPos(Vector(9600, -1201, -390))
			ent2:SetModel(Model("models/props_c17/oildrum001.mdl"))
			ent2:Spawn()
		end
		
	end)

	timer.Create("Prevent players throwing props out the map", 1, 0, function()	
		local posMin = Vector(-1691.4851074219, -312.75952148438, 543.96875)
		local posMax = Vector(-1247.1640625, 1343.96875, -19.220314025879)
		for k,v in pairs(ents.FindInBox(posMin, posMax)) do
			if (v:GetClass() == "prop_physics") then
				v:SetPos(Vector(-143, 400, 88))
				v:Spawn()
			end
		end

		local posMin = Vector(-1855.96875, 1028.96875, 540.31182861328)
		local posMax = Vector(-625.75988769531, 1343.96875, 7.2045669555664)
		for k,v in pairs(ents.FindInBox(posMin, posMax)) do
			if (v:GetClass() == "prop_physics") then
				v:SetPos(Vector(-143, 400, 88))
				v:Spawn()
			end
		end

		local posMin = Vector(-1855.96875, 1344.0177001953, 5.8926124572754)
		local posMax = Vector(255.80390930176, 2014.5397949219, 543.96875)
		for k,v in pairs(ents.FindInBox(posMin, posMax)) do
			if (v:GetClass() == "prop_physics") then
				v:SetPos(Vector(-143, 400, 88))
				v:Spawn()
			end
		end

		local posMin = Vector(-403.18661499023, -263.96875, 140.31092834473)
		local posMax = Vector(255.80390930176, 2014.5397949219, 543.96875)
		for k,v in pairs(ents.FindInBox(posMin, posMax)) do
			if (v:GetClass() == "prop_physics") then
				v:SetPos(Vector(-143, 400, 88))
				v:Spawn()
			end
		end

		local posMin = Vector(-1855.96875, -319.25994873047, 543.64324951172)
		local posMax = Vector(-373.96578979492, -128.03125, 113.74275970459)
		for k,v in pairs(ents.FindInBox(posMin, posMax)) do
			if (v:GetClass() == "prop_physics") then
				v:SetPos(Vector(-143, 400, 88))
				v:Spawn()
			end
		end
	end)
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
