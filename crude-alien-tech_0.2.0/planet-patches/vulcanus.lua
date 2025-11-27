
local utils = require("utils")

local vulcanusStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "vulcanus" then
		vulcanusStart = true
	end
end

if vulcanusStart then --Starting on Vulcanus
	utils.remove_tech("cat-somethings-rumbling", false, false)
	utils.remove_tech("cat-wolframs-might", false, false)
	utils.remove_tech("cat-rock-and-stone", false, false)
	utils.remove_tech("cat-uncatalyzed-melting", false, false)

	utils.hide_asset("fluid","cat-impure-molten-iron")
	utils.hide_asset("fluid","cat-impure-molten-copper")
	utils.hide_asset("assembling-machine","cat-foundry-mk1")
	utils.hide_asset("mining-drill","cat-big-mining-drill-mk1")
	utils.hide_asset("item","cat-big-mining-drill-mk1")
	utils.hide_asset("item","cat-foundry-mk1")
	utils.hide_asset("recipe","cat-foundry-mk1")
	utils.hide_asset("recipe","cat-big-mining-drill-mk1")

	data.raw["technology"]["cat-otherworldly-lava"].hidden = false
	--Add new tech for: sand, bricks from sand, lava, impure molten iron/copper, pure sand, bricks from pure sand.

	


else -- Starting elsewhere
	utils.set_prerequisites("planet-discovery-vulcanus",{"space-platform-thruster","cat-rock-and-stone","cat-wolframs-might"})
	utils.remove_tech("tungsten-carbide", false, false)

	utils.set_trigger("foundry",data.raw["technology"]["tungsten-carbide"].research_trigger)
	utils.set_prerequisites("foundry",{"calcite-processing"})
	utils.set_recipes("foundry",{"foundry","molten-iron-from-lava","molten-copper-from-lava","molten-iron","molten-copper"})
	utils.add_prerequisites("cat-uncatalyzed-melting",{"cat-somethings-rumbling"})

	--Set Mining Drill mk2 and Foundry mk2 Recipes
	if settings.startup["use-chain-recipe"].value then
		data.raw["recipe"]["foundry"].ingredients = {
			--20 Electronic Circuits + 20 Refined Concrete + 30 Steel + 50 Tungsten Carbide + 1 Mk1 Foundry.
			{type = "item",name = "electronic-circuit", amount = 20},
			{type = "item",name = "refined-concrete", amount = 20},
			{type = "item",name = "steel-plate", amount = 30},
			{type = "item",name = "tungsten-carbide", amount = 50},
			{type = "item",name = "cat-foundry-mk1", amount = 1},
		}
		data.raw["recipe"]["big-mining-drill"].ingredients = {
			--5 Advanced Circuits + 5 Electric Engine Units + 1 Mk1 Big Mining Drill + 100 Molten Iron
			{type = "item",name = "advanced-circuit", amount = 5},
			{type = "item",name = "electric-engine-unit", amount = 5},
			{type = "fluid",name = "molten-iron", amount = 100},
			{type = "item",name = "cat-big-mining-drill-mk1", amount = 1},
		}
		data.raw["recipe"]["big-mining-drill"].order = "a[items]-c[big-mining-drill]-b"
	end
	utils.set_prerequisites("cat-frozen-dreams", {"foundry","cat-energize-innovation","cat-salvage-failed-efforts","heating-tower","cat-dreaming-of-greener-pastures"})
end