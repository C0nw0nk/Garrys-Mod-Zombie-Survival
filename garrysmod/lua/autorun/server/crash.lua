hook.Add("PlayerInitialSpawn", "anti-crash", function(ply)
	--Console command to help prevent people from crashing.
	ply:ConCommand("r_drawmodeldecals 0")
	ply:ConCommand("r_maxmodeldecal 50")
	
	--Work around for FCVAR_SERVER_CAN_EXECUTE prevented server running command
	ply:SendLua("RunConsoleCommand('r_drawmodeldecals', 0)")
	ply:SendLua("RunConsoleCommand('r_maxmodeldecal', 50)")
end)
