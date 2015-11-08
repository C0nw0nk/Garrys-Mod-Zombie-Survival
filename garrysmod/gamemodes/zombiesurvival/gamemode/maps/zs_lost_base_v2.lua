hook.Add("InitPostEntityMap", "Adding", function()
	--Prevent people getting stuck in the vents.
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-4050, -5061, 80))
		ent2:SetAngles(Angle(90, 0, 0))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_debris/wood_board06a.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-3994, -3950, 80))
		ent2:SetAngles(Angle(90, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_debris/wood_board06a.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
end)

--Disable Detpacks and Grenades to prevent client side crashes on this map
for k, v in pairs(GM.Items) do
if v['Name'] == "Grenade" then
GM.Items[k] = nil
end
if v['Name'] == "Detonation Pack" then
GM.Items[k] = nil
end
end

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
