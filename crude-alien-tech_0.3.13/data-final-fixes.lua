
-- Ensures that the crude machines have the same crafting categories as their main counterparts, if altered by other mods such as Age of Production.
data.raw["assembling-machine"]["cat-foundry-mk1"].crafting_categories = data.raw["assembling-machine"]["foundry"].crafting_categories
data.raw["assembling-machine"]["cat-electromagnetic-plant-mk1"].crafting_categories = data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories
data.raw["assembling-machine"]["cat-biochamber-mk1"].crafting_categories = data.raw["assembling-machine"]["biochamber"].crafting_categories
data.raw["assembling-machine"]["cat-cryogenic-plant-mk1"].crafting_categories = data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories
--log("ran data final fixes")
