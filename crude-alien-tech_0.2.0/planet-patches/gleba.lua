local utils = require("utils")

local glebaStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "gleba" then
		glebaStart = true
	end
end


if glebaStart then -- Starting on Gleba

else -- Starting Elsewhere

end

