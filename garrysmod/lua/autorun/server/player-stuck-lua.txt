--This is to prevent players on oposite teams getting stuck inside of each other or on each others heads.
hook.Add("ShouldCollide", "Player.Stuck", function(player1, player2)
	--If Player1 or Player2 are both colliding with each other.
	if player1:IsValid() and player1:IsPlayer() and player2:IsValid() and player2:IsPlayer() then
		--If their model's are penetrating each other.
		if player1:GetPhysicsObject():IsPenetrating() != false or player2:GetPhysicsObject():IsPenetrating() != false then
		--Check that both players are not on the same team.
			if player1:Team() == TEAM_HUMAN and player2:Team() == TEAM_UNDEAD or player1:Team() == TEAM_UNDEAD and player2:Team() == TEAM_HUMAN then
				--Make the player have no collision with the other they are stuck in.
				return false
			end
		end
	end
end)
