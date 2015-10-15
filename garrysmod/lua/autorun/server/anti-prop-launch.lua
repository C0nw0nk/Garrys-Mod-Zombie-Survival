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
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_arsenalcrate*") then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_resupplybox*") then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_messagebeacon*") then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_gunturret*") then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_detpack*") then
			return false
		end
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_spotlamp*") then
			return false
		end
	end
	end
end)
