hook.Add("InitPostEntityMap", "Adding", function()
	--Prevent skycading on the rear windows of the towers outside
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-1339, 3656, 512))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(879, 1252, 512))
		ent2:SetAngles(Angle(0, 90, 90))
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
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
