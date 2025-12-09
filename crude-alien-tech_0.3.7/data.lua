require("prototypes.item")
require("prototypes.recipe")
require("prototypes.entity")
require("prototypes.technology")

if mods["planetaris-arig"] then
	data.raw["fluid"]["cat-sand"].auto_barrel = false -- Prevent auto-barreling if Arig sand is present. Has to be done here before base game does auto-barreling.
	data.raw["fluid"]["cat-pure-sand"].auto_barrel = false
end