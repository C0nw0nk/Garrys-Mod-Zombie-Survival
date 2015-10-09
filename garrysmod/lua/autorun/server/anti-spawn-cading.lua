--You should realy use my map profiles to accomplish this since every map has a different zombie spawn size/area.
--I also recommend not using this on objective maps for obvious reasons.
hook.Add("ShouldCollide", "Anti-Spawn Cading", function(player, object)
	--Get the zombie spawn.
	for k, v in pairs(ents.FindByClass("info_player_zombie")) do
		--Timer runs in loop on every frame.
		timer.Create("Check for spawn cading", 0, 0, function()
			--Get entities within the zombie spawn.
			for _, ent in pairs(ents.FindInSphere(v:GetPos(), 400)) do
				--If entities within the zombie spawn are props.
				if string.match(ent:GetClass(), "prop_*") then
					--Set collision group for entities within the zombie spawn.
					ent:SetCollisionGroup(COLLISION_GROUP_DEBRIS_TRIGGER)
				end
			end
		end)
	end
	
	--Set the prop collision group back to default when outside of zombie spawn.
	--(The activator is a human being hit or touching the prop. Zombies can still prop kill with props they don't collide with.)
	if player:IsValid() and player:IsPlayer() then
		if player:Team() == TEAM_HUMAN then
			--Set collision group for props outside of the zombie spawn.
			if string.match(ent:GetClass(), "prop_*") then
				object:SetCollisionGroup(COLLISION_GROUP_NONE)
			end
		end
	end
end)
