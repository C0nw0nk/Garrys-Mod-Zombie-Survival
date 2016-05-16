--To prevent people hacking with modified client side scripts when wraith.
--Now the server controls wraith visibility.

hook.Add("StartCommand", "StartCommand-ZombieSurvival-Anti-Wraith-Hacking", function(ply,cmd)
	--If player is on zombie team and class is wraith.
	if ply:IsPlayer() and ply:Team() == TEAM_UNDEAD and ply:GetZombieClassTable().Name == "Wraith" then
		--If the wraith is attacking. (Melee)
		if ply:GetActiveWeapon():IsAttacking() then
			--Set the wraith to be visible.
			if ply:GetNoDraw() then
				ply:SetNoDraw(false)
			end
		else
			--If the wraith is moving faster than (IN_SPEED)
			if ply:GetVelocity():Length() > 50 then
				--Set the wraith to be visible.
				if ply:GetNoDraw() then
					ply:SetNoDraw(false)
				end
			--Else if the wraith is walking slowly or (IN_SPEED)
			elseif ply:GetVelocity():Length() <= 50 then
				--Set the wraith to be invisible.
				if !ply:GetNoDraw() then
					ply:SetNoDraw(true)
				end
			end
		end
	end
end)
