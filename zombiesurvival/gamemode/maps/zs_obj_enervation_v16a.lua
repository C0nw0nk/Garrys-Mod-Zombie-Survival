hook.Add("InitPostEntityMap", "Adding", function()

	--Bridge for zombies to destroy usually you nail the tire at this part.
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2605, 1754, -726))
		ent2:SetAngles(Angle(90, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2425, 1764, -766))
		ent2:SetAngles(Angle(105, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:Spawn()
	end
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-2245, 1764, -815))
		ent2:SetAngles(Angle(105, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:Spawn()
	end
	
	--Prevent players breaking into the loot room at end of the map unless they have the babies to grant them access
	local ent2 = ents.Create("prop_dynamic_override")
	if ent2:IsValid() then
		ent2:SetPos(Vector(-8224, 12752, -2111))
		ent2:SetAngles(Angle(0, 0, 90))
		ent2:SetKeyValue("solid", "6")
		ent2:SetModel(Model("models/props_lab/blastdoor001c.mdl"))
		ent2:SetNoDraw(true)
		ent2:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)
		ent2:Spawn()
	end
	
timer.Create("Stop throwing props out of bounds", 1, 0, function()
--Train tracks
local posMin = Vector(-3071.96875, 137.64744567871, 0.05416870117)
local posMax = Vector(-384.03125, 511.04623413086, -566.59448242188)
for k,v in pairs(ents.FindInBox(posMin, posMax)) do
	if (v:GetClass() == "prop_physics") then
		v:SetPos(Vector(-181, 205, -447))
		v:Spawn()
	end
end

--Room next to train tracks
local posMin = Vector(-369.76806640625, -383.96875, -256.05462646484)
local posMax = Vector(-144.03125, -32.14758682251, -511.9079284668)
for k,v in pairs(ents.FindInBox(posMin, posMax)) do
	if (v:GetClass() == "prop_physics") then
		v:SetPos(Vector(-181, 205, -447))
		v:Spawn()
	end
end

--Down the barnacle tunnel climbing up here humans can stay alive and troll being last survivor
local posMin = Vector(-249.66389465332, 1270.4135742188, -128.03125)
local posMax = Vector(-650.50866699219, 1120.03125, -246.8059387207)
for k,v in pairs(ents.FindInBox(posMin, posMax)) do
	v:SetPos(Vector(-786, 1166, -671))
	v:Spawn()
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
	timer.Simple(60, function()
		ply:PrintMessage(HUD_PRINTTALK, "Lua map fixes by C0nw0nk")
	end)
end);
--End credits hook
