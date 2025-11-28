local utils = require("utils")

local glebaStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "gleba" then
		glebaStart = true
	end
end


if glebaStart then -- Starting on Gleba
	utils.remove_tech("cat-earthly-roots", false, false)
	utils.remove_tech("cat-dreaming-of-greener-pastures", false, false)
	utils.hide_asset("assembling-machine","cat-biochamber-mk1")
	utils.hide_asset("agricultural-tower","cat-agricultural-tower-mk1")
	utils.hide_asset("item","cat-biochamber-mk1")
	utils.hide_asset("item","cat-agricultural-tower-mk1")
	utils.hide_asset("recipe","cat-biochamber-mk1")
	utils.hide_asset("recipe","cat-agricultural-tower-mk1")

	utils.set_prerequisites("cat-frozen-dreams",{"cat-rock-and-stone","cat-energize-innovation","cat-salvage-failed-efforts","heating-tower","biochamber"})
	utils.add_recipes("planet-discovery-vulcanus",{"cat-wood-decarbonization"})

	
else -- Starting Elsewhere

	if mods["any-planet-start"] and not settings.startup["aps-planet"].value == "aquilo" then -- Check if starting on Aquilo instead; if so, don't change.
		utils.set_prerequisites("heating-tower",{"cat-dreaming-of-greener-pastures","concrete"})
		utils.set_trigger("heating-tower", {type = "craft-item", item = { name = "nutrients", count = 10 }})
	end

	utils.remove_tech("tree-seeding", false, false)
	utils.remove_tech("artificial-soil", false, false)
	utils.set_unit("fish-breeding",{count = 100, ingredients = {{"automation-science-pack",1}, {"logistic-science-pack",1}, {"chemical-science-pack",1},},time = 15 })
	utils.set_prerequisites("fish-breeding",{"cat-dreaming-of-greener-pastures"})
	utils.set_recipes("agriculture",{"agricultural-tower"})

	utils.set_prerequisites("bioflux",{"cat-dreaming-of-greener-pastures"})
	utils.set_trigger("bioflux",{ type = "build-entity", entity = { name = "cat-biochamber-mk1"	}})

	utils.set_recipes("bacteria-cultivation",{"copper-bacteria","iron-bacteria","copper-bacteria-cultivation","iron-bacteria-cultivation"})
	utils.set_prerequisites("bioflux-processing",{"bioflux","rocket-fuel"})
	utils.set_prerequisites("planet-discovery-gleba",{"bioflux-processing","bacteria-cultivation","space-platform-thruster","heating-tower"})
	utils.set_prerequisites("agricultural-science-pack",{"planet-discovery-gleba","yumako","jellynut","biochamber"})

	utils.set_recipes("yumako",{"yumako-processing","artificial-yumako-soil"})
	utils.set_recipes("jellynut",{"jellynut-processing","artificial-jellynut-soil"})

	utils.set_trigger("biochamber",{type = "build-entity", entity = "agricultural-tower"})

	utils.set_trigger("agricultural-science-pack",{type = "build-entity", entity = "biochamber"})

	if settings.startup["use-chain-recipe"].value then
		data.raw["recipe"]["agricultural-tower"].ingredients = {
		--1 Electronic Circuit + 1 Landfill + 10 Spoilage + 2 Steel + 1 Mk1 Agricultrual Tower.
		{type = "item",name = "electronic-circuit", amount = 1},
		{type = "item",name = "landfill", amount = 1},
		{type = "item",name = "spoilage", amount = 10},
		{type = "item",name = "steel-plate", amount = 2},
		{type = "item",name = "cat-agricultural-tower-mk1", amount = 1},
	}
	data.raw["recipe"]["biochamber"].ingredients = {
		--4 Electronic Circuits + 1 Landfill + 5 Nutrients + 1 Pentapod Egg + 1 Mk1. Biochamber
		{type = "item",name = "electronic-circuit", amount = 4},
		{type = "item",name = "landfill", amount = 1},
		{type = "item",name = "nutrients", amount = 5},
		{type = "item",name = "pentapod-egg", amount = 1},
		{type = "item",name = "cat-biochamber-mk1", amount = 1},
	}
	end
end

