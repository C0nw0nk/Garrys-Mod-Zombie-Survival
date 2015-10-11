--This hook is to prevent humans getting stuck in the floating animation on lamp's and turrets.
hook.Add("ShouldCollide", "Prop Collision", function(player, object)
	if player:IsValid() and player:IsPlayer() then
		if player:Team() == TEAM_HUMAN then
			--Set collision group for spotlamps with humans.
			if string.match(object:GetClass(), "prop_spotlamp*") then
				object:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)
			end
			--Set collision group for turrets with humans.
			if string.match(object:GetClass(), "prop_gunturret*") then
				object:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)
			end
		end
		if player:Team() == TEAM_UNDEAD then
			--Set collision group for spotlamps with zombies.
			if string.match(object:GetClass(), "prop_spotlamp*") then
				object:SetCollisionGroup(COLLISION_GROUP_NONE)
			end
			--Set collision group for turrets with zombies.
			if string.match(object:GetClass(), "prop_gunturret*") then
				object:SetCollisionGroup(COLLISION_GROUP_NONE)
			end
		end
	end
end)
