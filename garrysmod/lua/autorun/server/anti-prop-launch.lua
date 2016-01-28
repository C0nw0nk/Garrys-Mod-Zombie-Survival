--Make sure the hook runs after all entities are spawned into the map.
hook.Add("InitPostEntityMap", "InitPostEntityMap.Anti.Prop.Launch", function()
	--Timer to force waiting for props to spawn in.
	timer.Simple(1, function()
		--Prevent players getting prop killed by the class prop_physics or func_physbox
		--You can still prop kill as a zombie.
		hook.Add("EntityTakeDamage", "Anti.Prop.Launch",  function(ent, attacker)
			local attacker = attacker:GetAttacker()
			if string.match(attacker:GetClass(), "prop_physics*") or string.match(attacker:GetClass(), "func_physbox*") and ent:IsValid() and ent:IsPlayer() then
				return true
			end
		end)
	end)
end)
