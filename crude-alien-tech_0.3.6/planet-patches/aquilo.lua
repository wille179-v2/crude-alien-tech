local utils = require("utils")


local aquiloStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "aquilo" then
		aquiloStart = true
	end
end

if aquiloStart then -- Start on aquilo
	-- Don't alter lithium or heating tower
	-- Cryogenic plant after holmium processing and crude electromagnetic plant

	utils.remove_tech("cat-frozen-dreams", false, false)
	utils.set_prerequisites("cat-cold-chemistry",{"lithium-processing","fluid-handling"})
	utils.set_trigger("cat-cold-chemistry",{type = "build-entity",entity="chemical-plant"})
	utils.add_recipes("cat-cold-chemistry",{"cat-ice","cat-sand","cat-pure-sand"})
	data.raw["technology"]["cat-cold-chemistry"].essential = false

	--utils.add_recipes("holmium-processing",{"superconductor","supercapacitor","electrolyte"})
	utils.remove_recipes("electromagnetic-plant",{"superconductor","supercapacitor","electrolyte"})
	utils.set_prerequisites("cryogenic-plant",{"lithium-processing","cat-energize-innovation"})

	utils.set_prerequisites("heating-tower",{"concrete"})
	utils.set_unit("heating-tower",{count = 50, ingredients = {{"automation-science-pack", 2}}, time = 15,})

	-- if aquilo-seabloom-algaculture

	if mods["aquilo-seabloom-algaculture"] then
		utils.add_prerequisites("cat-earthly-roots",{"seabloom-algaculture"})
	else
		utils.add_recipes("holmium-processing",{"cat-synthetic-wood"})
		utils.add_prerequisites("cat-earthly-roots",{"holmium-processing"})
	end

	-- if no seabloom, use holmium synthetic wood

else -- start elsewhere
	utils.set_trigger("lithium-processing",{type = "craft-fluid",fluid = "lithium-brine"})
	utils.set_prerequisites("lithium-processing",{"cat-cold-chemistry"})
	
	utils.set_prerequisites("planet-discovery-aquilo",{"lithium-processing","electromagnetic-science-pack","advanced-asteroid-processing","asteroid-reprocessing","rocket-turret"})
	
	utils.set_prerequisites("cryogenic-plant",{"planet-discovery-aquilo"})
	utils.set_trigger("cryogenic-plant",{type = "mine-entity", entity = "lithium-iceberg-big"})

	if settings.startup["use-chain-recipe"].value then
		data.raw["recipe"]["cryogenic-plant"].ingredients = {
			--20 Lithium Plate + 10 Processing Units + 20 Superconductors + 1 Mk1 Cryogenic Plant
			{type = "item",name = "lithium-plate", amount = 20},
			{type = "item",name = "processing-unit", amount = 10},
			{type = "item",name = "superconductor", amount = 10},
			{type = "item",name = "cat-cryogenic-plant-mk1", amount = 1},
		}
	end


end

if not mods["Flare Stack"] then
	utils.add_recipes("cat-cold-chemistry",{"cat-vent-oxygen","cat-vent-hydrogen","cat-vent-nitrogen"})
end