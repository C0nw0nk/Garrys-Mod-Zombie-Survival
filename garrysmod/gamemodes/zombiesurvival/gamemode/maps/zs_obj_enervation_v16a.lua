hook.Add("InitPostEntityMap", "Adding", function()
	timer.Simple(1, function()
	--Remove guns in the room before the bridge.
	for _, ent in pairs(ents.FindInSphere(Vector(-1696, 861, -682), 400)) do
		if (ent:GetModel() == "models/weapons/w_smg_mp5.mdl") then
			ent:Remove()
		end
		if (ent:GetModel() == "models/weapons/w_rif_m4a1.mdl") then
			ent:Remove()
		end
	end

	--Bridges in next section by default have about 10000 health so lets reduce that.
	for k,v in pairs(ents.FindByModel("*17")) do
	v:SetMaxHealth(2000)
	end
	for k,v in pairs(ents.FindByModel("*18")) do
	v:SetMaxHealth(2500)
	end
	for k,v in pairs(ents.FindByModel("*19")) do
	v:SetMaxHealth(2500)
	end
	for k,v in pairs(ents.FindByModel("*20")) do
	v:SetMaxHealth(2500)
	end
	for k,v in pairs(ents.FindByModel("*21")) do
	v:SetMaxHealth(2500)
	end
	for k,v in pairs(ents.FindByModel("*22")) do
	v:SetMaxHealth(2000)
	end
	--End bridge health reduction.
	end)
	
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
	if v:IsValid() and v:IsPlayer() then
	v:SetPos(Vector(-786, 1166, -671))
	v:Spawn()
	end
end

end)
	
end)

--Prevent players breaking into the loot room at end of the map unless they have the babies to grant them access.
--Prevent players destroying the plug on the elevator.
hook.Add("EntityTakeDamage", "EntityTakeDamage",  function(ent, attacker)
	local attacker = attacker:GetAttacker()
	--*107 Door to loot room, *64 Plug and elevator.
	if string.match(ent:GetModel(), "*107") or string.match(ent:GetModel(), "*64") then
		if attacker:IsValid() and attacker:IsPlayer() then
			--if attacker:Team() == TEAM_HUMAN then
				return true
			--end
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
