local utils = require("utils")


local fulgoraStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "fulgora" then
		fulgoraStart = true
	end
end


if fulgoraStart then -- Starting on Fulgora
	utils.remove_tech("cat-salvage-failed-efforts", false, false)
	utils.remove_tech("cat-bolt-of-inspiration", false, false)
	utils.set_prerequisites("cat-extract-rare-elements",{"automation-2","holmium-processing"})
	utils.remove_tech("cat-energize-innovation", false, false)

	utils.hide_asset("assembling-machine","cat-electromagnetic-plant-mk1")
	utils.hide_asset("furnace","cat-recycler-mk1")
	utils.hide_asset("item","cat-recycler-mk1")
	utils.hide_asset("item","cat-electromagnetic-plant-mk1")
	utils.hide_asset("recipe","cat-electromagnetic-plant-mk1")
	utils.hide_asset("recipe","cat-recycler-mk1")


	utils.set_prerequisites("cat-frozen-dreams",{"cat-rock-and-stone","electromagnetic-plant","recycling","heating-tower","cat-dreaming-of-greener-pastures"})

	if mods["fulgora-coralmium-agriculture"] then
		-- remove crude agricultural tower entirely. Earthly Roots additionally requires Electromagnetic Plant
		-- remove burnt spoilage from dreaming of greener pastures
		utils.remove_recipes("cat-earthly-roots",{"cat-agricultural-tower-mk1"})
		utils.remove_recipes("cat-dreaming-of-greener-pastures",{"burnt-spoilage"})
		utils.hide_asset("agricultural-tower","cat-agricultural-tower-mk1")
		utils.hide_asset("item","cat-agricultural-tower-mk1")
		utils.hide_asset("recipe","cat-agricultural-tower-mk1")
		utils.add_prerequisites("cat-earthly-roots",{"electromagnetic-plant"})

	end

else -- Starting Elsewhere
	utils.set_prerequisites("holmium-processing",{"cat-extract-rare-elements"})
	utils.set_prerequisites("planet-discovery-fulgora",{"cat-extract-rare-elements","cat-salvage-failed-efforts","space-platform-thruster"})
	utils.set_prerequisites("recycling",{"planet-discovery-fulgora","cat-salvage-failed-efforts"})
	utils.set_prerequisites("electromagnetic-plant",{"planet-discovery-fulgora","holmium-processing"})
	utils.set_trigger("electromagnetic-plant",data.raw["technology"]["recycling"].research_trigger)
	utils.set_prerequisites("electromagnetic-science-pack",{"cat-energize-innovation","electromagnetic-plant"})
	utils.set_trigger("electromagnetic-science-pack",{type = "build-entity", entity = "electromagnetic-plant"})

	if settings.startup["use-chain-recipe"].value then
		data.raw["recipe"]["recycler"].ingredients = {
			--4 Processing Units + 20 Gears + 10 Concrete + 10 Steel + Mk1 Recycler
			{type = "item",name = "processing-unit", amount = 4},
			{type = "item",name = "iron-gear-wheel", amount = 20},
			{type = "item",name = "concrete", amount = 10},
			{type = "item",name = "steel-plate", amount = 10},
			{type = "item",name = "cat-recycler-mk1", amount = 1},
		}
		data.raw["recipe"]["electromagnetic-plant"].ingredients = {
			--150 Holmium Plates + 20 Processing Units + 20 Refined Concrete + 20 Steel + 1 Mk1 EM Plant
			{type = "item",name = "holmium-plate", amount = 150},
			{type = "item",name = "processing-unit", amount = 20},
			{type = "item",name = "refined-concrete", amount = 20},
			{type = "item",name = "steel-plate", amount = 20},
			{type = "item",name = "cat-electromagnetic-plant-mk1", amount = 1},
		}
	end

end