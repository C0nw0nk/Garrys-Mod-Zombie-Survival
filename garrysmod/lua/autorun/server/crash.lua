hook.Add("PlayerInitialSpawn", "anti crash hook", function(ply)
	--Console command to help prevent people from crashing.
	ply:ConCommand("r_drawmodeldecals 0")
	ply:ConCommand("r_maxmodeldecal 50")
end);
