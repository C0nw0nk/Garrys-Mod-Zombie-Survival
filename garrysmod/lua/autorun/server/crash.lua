hook.Add("PlayerConnect", "anti crash hook", function()
	--Console command to help prevent people from crashing.
	RunConsoleCommand("r_drawmodeldecals", 0)
	RunConsoleCommand("r_maxmodeldecal", 50)
end)
