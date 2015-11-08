hook.Add("InitPostEntityMap", "MapProfile", function()
	timer.Simple( 1, function()
	--Remove grenade that spawns in map
		for _, ent in pairs(ents.FindByClass("weapon_zs_grenade")) do ent:Remove() end
		for _, ent in pairs(ents.FindByModel("models/weapons/w_grenade.mdl")) do ent:Remove() end
	end)
end)

--Disable detpacks and grenades to prevent client side crashes on this map
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
