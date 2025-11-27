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

require("planet-patches.vulcanus")
require("planet-patches.gleba")
require("planet-patches.fulgora")
require("planet-patches.aquilo")

if mods["planetaris-arig"] then
	require("planet-patches.planetaris-arig")
end

-- ##################### Omega Drill compatibility #####################


-- ##################### Wooden fulgora: Coralmium Agriculture compatibility #####################



