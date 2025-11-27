local utils = require("utils")

local fulgoraStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "vulcanus" then
		fulgoraStart = true
	end
end


if fulgoraStart then -- Starting on Fulgora
	utils.remove_tech("cat-salvage-failed-efforts", false, false)

else -- Starting Elsewhere


end