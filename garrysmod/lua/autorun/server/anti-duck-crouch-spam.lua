--Prevent players from spamming crouch in the air after crouch jumping they will be able to crouch again after they hit the ground.
--StartCommand allows you to change the players inputs before they are processed by the server.
hook.Add("StartCommand", "StartCommand-anti-duck-crouch-spam", function(ply, cmd)
	--If allowduck is 0 then do not allow the player to crouch.
	if ply:GetNWInt('allowduck') == 0 then
		--Remove the ability to crouch.
		--cmd:RemoveKey(IN_DUCK)
		--Force the player to stay crouched until the hit the ground.
		if !ply:IsOnGround() then
			--Force player to crouch.
			cmd:SetButtons(IN_DUCK)
			ply:SendLua("RunConsoleCommand('+duck')")
		end
	end
	--If the player just came out of the crouch animation prevent them being able to crouch again.
	if ply:KeyReleased(IN_DUCK) then
		--Prevent player ducking again.
		ply:SetNWInt('allowduck', 0)
	end
end)
--OnPlayerHitGround is called when a player makes contact with the ground.
hook.Add("OnPlayerHitGround", "OnPlayerHitGround-anti-duck-crouch-spam", function(player)
	--If the player is on the ground.
	if player:IsOnGround() then
		--Allow the player to duck again.
		if player:GetNWInt('allowduck') == 0 then
			player:SendLua("RunConsoleCommand('-duck')")
		end
		player:SetNWInt('allowduck', 1)
	end
end)
