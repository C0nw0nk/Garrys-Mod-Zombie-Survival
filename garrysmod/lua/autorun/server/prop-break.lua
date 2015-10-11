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
	
	--Output who on the zombie team is attacking / Destroying flesh creeper nests.
	if string.match(ent:GetClass(), "prop_creepernest") then
		if attacker:IsValid() and attacker:IsPlayer() then
			if attacker:Team() == TEAM_UNDEAD then
				PrintTranslatedMessage(HUD_PRINTCONSOLE, " "..attacker:Name().." "..attacker:SteamID().." attacked "..ent:GetModel().." ")
			end
		end
	end

	--Prevent players destroying props in wave 1 or the selection of who will become a zombie.
	--Starting wave of who will become a zombie.
	if GetGlobalBool("wave") == false then
		--If entity is a prop
		if string.match(ent:GetClass(), "prop_*") then
			--If attacker is valid and a player
			if attacker:IsValid() and attacker:IsPlayer() then
				--Check if attacker is on the human team
				if attacker:Team() == TEAM_HUMAN then
					--Check if attacker is using a melee weapon
					--if attacker:GetActiveWeapon().IsMelee then
						--Check that the entity prop class is not a door
						if string.match(ent:GetClass(), "prop_door*") then
						--Do nothing
						else
						--Block the damage inflicted.
						return true
						end
					--end
				end
			end
		end
	else
		--If wave is less than or equal to the first wave.
		if GetGlobalBool("wave") <= 1 then
			--If entity is a prop
			if string.match(ent:GetClass(), "prop_*") then
				--If attacker is valid and a player
				if attacker:IsValid() and attacker:IsPlayer() then
					--Check if attacker is on the human team
					if attacker:Team() == TEAM_HUMAN then
						--Check if attacker is using a melee weapon
						--if attacker:GetActiveWeapon().IsMelee then
							--Check that the entity prop class is not a door
							if string.match(ent:GetClass(), "prop_door*") then
							--Do nothing
							else
							--Block the damage inflicted.
							return true
							end
						--end
					end
				end
			end
		end
	end
	
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
