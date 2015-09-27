hook.Add("InitPostEntityMap", "MapProfile", function()
	timer.Simple( 1, function()	
		--Replace the detpack and boom stick in secret room with a dummy
		for _, ent in pairs(ents.FindByModel("models/weapons/w_c4_planted.mdl")) do
		ent:Remove()
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
		ent2=ents.Create("prop_physics")
		ent2:SetPos(ent:GetPos())
		ent2:SetAngles(ent:GetAngles())
		ent2:SetModel(ent:GetModel())
		ent2:Spawn()
		end
		end
		
		for _, ent in pairs(ents.FindByModel("models/weapons/w_shotgun.mdl")) do
		ent:Remove()
		local ent2 = ents.Create("prop_dynamic_override")
		if ent2:IsValid() then
		ent2=ents.Create("prop_physics")
		ent2:SetPos(ent:GetPos())
		ent2:SetAngles(ent:GetAngles())
		ent2:SetModel(ent:GetModel())
		ent2:Spawn()
		end
		end
	end)
	
	--Prevent players getting stuck between the truck and fence
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1417, -1773, 100))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_debris/wood_board06a.mdl"))
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
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
