--Add collision checks to all props that are created.
local function EntityCreated( entity )
	if string.match(entity:GetClass(), "prop_physics*") then
		entity:SetCustomCollisionCheck(true)
	end
end
hook.Add("OnEntityCreated", "entity.Created", EntityCreated)

--Check what the props are colliding with.
hook.Add("ShouldCollide", "Prop.Collision", function(player, object)
	--Make sure the prop is not a player.
	if player:IsValid() and player:IsPlayer() then
	else
	--Make sure both the prop and object its colliding with are both valid.
	if player:IsValid() and object:IsValid() then
		--If the prop is a prop_physics and its colliding with an arsenal crate set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_arsenalcrate*") then
			return false
		end
		--If the prop is a prop_physics and its colliding with an resupply box set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_resupplybox*") then
			return false
		end
		--If the prop is a prop_physics and its colliding with an message beacon set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_messagebeacon*") then
			return false
		end
		--If the prop is a prop_physics and its colliding with an gun turret set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_gunturret*") then
			return false
		end
		--If the prop is a prop_physics and its colliding with an detonation pack set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_detpack*") then
			return false
		end
		--If the prop is a prop_physics and its colliding with an spot lamp set collision to none.
		if string.match(player:GetClass(), "prop_physics*") and string.match(object:GetClass(), "prop_spotlamp*") then
			return false
		end
	end
	end
end)
