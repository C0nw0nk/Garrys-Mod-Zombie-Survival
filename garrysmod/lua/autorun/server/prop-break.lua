hook.Add("PropBroken", "PropBroken.Alert", function(ent, attacker)
	if string.sub(ent:GetClass(), 1, 5) == "prop_" then
		if attacker:IsValid() and attacker:IsPlayer() then
			if attacker:Team() == TEAM_HUMAN then
				PrintTranslatedMessage(HUD_PRINTCONSOLE, " "..attacker:Name().." "..attacker:SteamID().." broke prop "..ent:GetModel().." ")
			end
		end
	end
end)
