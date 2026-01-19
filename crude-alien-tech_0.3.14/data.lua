require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.technology")

if mods["planetaris-arig"] then
	data.raw["fluid"]["cat-sand"].auto_barrel = false -- Prevent auto-barreling if Arig sand is present. Has to be done here before base game does auto-barreling.
	data.raw["fluid"]["cat-pure-sand"].auto_barrel = false
end

if settings.startup["unrestricted-buildings"].value == true then
	data.raw["recipe"]["foundry"].surface_conditions = nil
	data.raw["recipe"]["big-mining-drill"].surface_conditions = nil
	data.raw["recipe"]["recycler"].surface_conditions = nil
	data.raw["recipe"]["electromagnetic-plant"].surface_conditions = nil
	data.raw["recipe"]["agricultural-tower"].surface_conditions = nil
	data.raw["recipe"]["biochamber"].surface_conditions = nil
	data.raw["recipe"]["cryogenic-plant"].surface_conditions = nil
end