hook.Add("InitPostEntityMap", "Adding", function()

	--Remove fake props
	for _, ent in pairs(ents.FindByClass("func_physbox")) do ent:Remove() end
	
	--Replace fake props classes with a working class (causes clients to crash)
--	for _, ent in pairs(ents.FindByClass("func_physbox")) do
--		local pro = ents.Create("prop_physics")
--		if pro:IsValid() then
--			pro:SetModel(ent:GetModel())
--			pro:SetPos(ent:GetPos())
--			pro:SetAngles(ent:GetAngles())
--			pro:Spawn()
--			ent:Remove()
--		end
--	end

	--Make fake unusable props usable
	for _, ent in pairs(ents.FindByClass("prop_dynamic")) do
		local pro = ents.Create("prop_physics")
		if pro:IsValid() then
			pro:SetModel(ent:GetModel())
			pro:SetPos(ent:GetPos())
			pro:SetAngles(ent:GetAngles())
			pro:Spawn()
			ent:Remove()
		end
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
