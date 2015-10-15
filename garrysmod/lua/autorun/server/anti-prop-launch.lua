local function EntityCreated( entity )
	if string.match(entity:GetClass(), "prop_physics*") then
		entity:SetCustomCollisionCheck(true)
	end
end
hook.Add("OnEntityCreated", "entity.Created", EntityCreated)

hook.Add("ShouldCollide", "Prop.Collision", function(player, object)
	if player:IsValid() and player:IsPlayer() then
	else
	if player:IsValid() and object:IsValid() then
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_arsenalcrate*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_resupplybox*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_messagebeacon*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_gunturret*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_detpack*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_spotlamp*") and player:GetPhysicsObject():IsPenetrating() != false and object:GetPhysicsObject():IsPenetrating() != false then
			return false
		end
	end
	end
end)
