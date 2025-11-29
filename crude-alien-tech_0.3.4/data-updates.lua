local utils = require("utils")

-- ##################### Flare Stack compatibility #####################

if mods["Flare Stack"] then 
	utils.add_prerequisites("cat-cold-chemistry",{"flare-stack-fluid-venting-tech"})
	data.raw["technology"]["flare-stack-fluid-venting-tech"].essential = true
	utils.hide_asset("recipe","cat-vent-oxygen")
	utils.hide_asset("recipe","cat-vent-hydrogen")
	utils.hide_asset("recipe","cat-vent-nitrogen")
end


-- ##################### Planet-Specific Patches & Any Planet Start compatibility #####################

require("planet-patches.vulcanus") -- Wooden Vulcanus compatibility here
require("planet-patches.gleba")
require("planet-patches.fulgora") -- Wooden Fulgora compatibility here
require("planet-patches.aquilo") -- Wooden aquilo compatibility here
require("planet-patches.planetaris-arig")

-- ##################### Omega Drill compatibility #####################


-- ##################### Lignumis compatibility #####################

if mods["lignumis"] then
	require("planet-patches.lignumis")
end

