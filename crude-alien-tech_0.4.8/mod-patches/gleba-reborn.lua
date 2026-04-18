local utils = require("utils")

if settings.startup["gleba-reborn-advanced-bacteria-recipes"].value then

	utils.add_recipes("bacteria-cultivation",{"gleba-reborn-iron-bacteria-extrusion","gleba-reborn-copper-bacteria-extrusion"})
	utils.remove_recipes("biochamber",{"gleba-reborn-iron-bacteria-extrusion","gleba-reborn-copper-bacteria-extrusion"})
end
-- Moves this back to bioflux processing / "candy factory"
utils.remove_recipes("biochamber",{"biolubricant"})
utils.add_recipes("bioflux-processing",{"biolubricant"})


-- If Gleba Reborn is modifying the biochamber AND we're using the chain recipe AND we're not starting on Gleba, modify

local eggFreeBiochamber = settings.startup["gleba-reborn-egg-free-biochamber"].value
local catChainRecipes = settings.startup["use-chain-recipe"].value
local notGleba = mods["any-planet-start"] and settings.startup["aps-planet"].value ~= "gleba"
local notAPS = not mods["any-planet-start"]

if eggFreeBiochamber and catChainRecipes and (notGleba or notAPS) then
	data.raw["recipe"]["biochamber"].ingredients = {
		--4 Electronic Circuits + 1 Landfill + 5 Nutrients + 1 Pentapod Egg + 1 Mk1. Biochamber
		{type = "item",name = "electronic-circuit", amount = 4},
		{type = "item",name = "landfill", amount = 1},
		{type = "item",name = "yumako-mash", amount = 10},
		{type = "item",name = "jelly", amount = 10},
		{type = "item",name = "cat-biochamber-mk1", amount = 1},
	}
end