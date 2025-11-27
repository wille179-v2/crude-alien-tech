-- ##################### Flare Stack compatibility #####################

if mods["Flare Stack"] then 
	table.insert(data.raw["technology"]["cat-cold-chemistry"].prerequisites, "flare-stack-fluid-venting-tech")
	data.raw["technology"]["flare-stack-fluid-venting-tech"].essential = true

	local ventOxygen = data.raw["recipe"]["cat-vent-oxygen"]
	local ventNitrogen = data.raw["recipe"]["cat-vent-nitrogen"]
	local ventHydrogen = data.raw["recipe"]["cat-vent-hydrogen"]

	ventOxygen.hidden_from_player_crafting = true
	ventOxygen.hidden_in_factoriopedia = true
	ventOxygen.hidden  = true

	ventNitrogen.hidden_from_player_crafting = true
	ventNitrogen.hidden_in_factoriopedia = true
	ventNitrogen.hidden  = true

	ventHydrogen.hidden_from_player_crafting = true
	ventHydrogen.hidden_in_factoriopedia = true
	ventHydrogen.hidden  = true
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



