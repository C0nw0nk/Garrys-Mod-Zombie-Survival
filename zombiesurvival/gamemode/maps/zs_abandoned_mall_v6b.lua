hook.Add("InitPostEntityMap", "MapProfile", function()
	--Remove fake props
	for _, ent in pairs(ents.FindByClass("func_physbox")) do ent:Remove() end
-- Nulled out replacing physbox with prop_physics causes random client side crashes.
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

	--World hints
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(100, 5300, 80))
		ent:SetParent(self)
		ent:Spawn()
		ent:SetViewable(TEAM_HUMAN)
		ent:SetRange(1000)
		ent:SetHint("Zombies come from here!")
	end
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(2040, 2356, 80))
		ent:SetParent(self)
		ent:Spawn()
		ent:SetViewable(TEAM_HUMAN)
		ent:SetRange(1000)
		ent:SetHint("Zombies come from here!")
	end
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(1182, 1515, 80))
		ent:SetParent(self)
		ent:Spawn()
		ent:SetViewable(TEAM_HUMAN)
		ent:SetRange(1300)
		ent:SetHint("Zombies come from here!")
	end
	local ent = ents.Create("point_worldhint")
	if ent:IsValid() then
		ent:SetPos(Vector(-340, 150, 80))
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
