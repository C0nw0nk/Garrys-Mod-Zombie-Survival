hook.Add("PropBroken", "PropBroken.Alert", function(ent, attacker)
	--If player breaks a prop output who broke the prop to console.
	if string.match(ent:GetClass(), "prop_*") then
		if attacker:IsValid() and attacker:IsPlayer() then
			if attacker:Team() == TEAM_HUMAN then
				PrintTranslatedMessage(HUD_PRINTCONSOLE, " "..attacker:Name().." "..attacker:SteamID().." broke prop "..ent:GetModel().." ")
			end
		end
	end
end)

hook.Add("EntityTakeDamage", "EntityTakeDamage",  function(ent, attacker)
	local attacker = attacker:GetAttacker()
	--Define this to make it so that all props can not be broken 
	--if string.match(ent:GetClass(), "prop_*") then
	--Prevent players destroying weapons.
	if string.match(ent:GetClass(), "prop_weapon") then
		if attacker:IsValid() and attacker:IsPlayer() then
			if attacker:Team() == TEAM_HUMAN then
				return true
			end
		end
	end
	--Prevent players destroying ammo.
	if string.match(ent:GetClass(), "prop_ammo") then
		if attacker:IsValid() and attacker:IsPlayer() then
			if attacker:Team() == TEAM_HUMAN then
				return true
			end
		end
	end
end)
