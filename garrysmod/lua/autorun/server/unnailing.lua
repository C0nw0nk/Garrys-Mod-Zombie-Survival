--To prevent trolling unailing a dead persons cade everyone is using late into the game 
--output who removes dead players nails.
hook.Add("OnNailRemoved", "Output who removes dead players nails", function(nail, ent1, ent2, remover)
	if remover and remover:IsValid() and remover:IsPlayer() then
		local deployer = nail:GetDeployer()
		if deployer:IsValid() and deployer ~= remover and deployer:Team() == TEAM_UNDEAD then
			PrintTranslatedMessage(HUD_PRINTCONSOLE, " "..remover:Name().." removed a nail belonging to *DEAD* "..deployer:Name().." *DEAD* ")
		end
	end
end)
