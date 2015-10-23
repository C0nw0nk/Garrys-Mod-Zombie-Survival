--This hook is to prevent humans getting stuck in the floating animation on lamp's, turrets, arsenal and resupply box.
hook.Add("ShouldCollide", "Player-stuck-on-prop", function(player, object)
	if player:IsValid() and player:IsPlayer() then
		if player:Team() == TEAM_HUMAN then
			if string.match(object:GetClass(), "prop_spotlamp*") then
				return false
			end
			if string.match(object:GetClass(), "prop_gunturret*") then
				return false
			end
		end
	end
end)
