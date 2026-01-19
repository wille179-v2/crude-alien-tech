local utils = require("utils")

utils.add_productivity(
	"solid-fuel-productivity-wolf",
	{
		"cat-oxygenated-solid-fuel-from-light-oil",
		"cat-oxygenated-solid-fuel-from-heavy-oil",
		"cat-oxygenated-solid-fuel-from-petroleum-gas",
		"cat-oxygenated-solid-fuel-from-ammonia"
	},
	0.1
)
utils.add_productivity("stone-brick-productivity-wolf",{"cat-sand-brick","cat-pure-sand-brick"},0.1)
utils.add_productivity("lithium-productivity-wolf",{"cat-lithium-brine"},0.1)
utils.add_productivity("ammonia-productivity-wolf",{"cat-ammonia"},0.1)
utils.add_productivity("tungsten-productivity-wolf",{"cat-tungsten-ore"},0.1)
utils.add_productivity("molten-iron-productivity-wolf",{"cat-impure-molten-iron","cat-uncatalyzed-molten-iron"},0.1)
utils.add_productivity("molten-copper-productivity-wolf",{"cat-impure-molten-copper","cat-uncatalyzed-molten-copper"},0.1)
utils.add_productivity("wood-fish-productivity-wolf",{"cat-wood-to-nooberry","cat-synthetic-wood","cat-wood-decarbonization"},0.1)
utils.add_productivity("holmium-solution-productivity-wolf",{"cat-holmium-ore-sifting"},0.1)
utils.add_productivity("yumako-jellynut-productivity-wolf",{"cat-nooberry-to-jelly","cat-nooberry-to-mash"},0.1)
utils.add_productivity("nutrients-productivity-wolf",{"cat-wood-to-nutrients"},0.1)


local fulgoraTech = "cat-bolt-of-inspiration"
local vulcanusTech = "cat-somethings-rumbling"
local glebaTech = "cat-dreaming-of-greener-pastures"

if mods["any-planet-start"] then
	if settings.startup["aps-planet"].value == "fulgora" then
		fulgoraTech = "electromagnetic-plant"
	elseif settings.startup["aps-planet"].value == "vulcanus" then
		vulcanusTech = "foundry"
	elseif settings.startup["aps-planet"].value == "gleba" then
		glebaTech = "biochamber"
	end
end


-- ######## Fulgora ########
local fulgoraProds = {
	"advanced-circuit-productivity-wolf",
	"battery-productivity-wolf",
	"electronic-circuit-productivity-wolf",
	"kovarex-enrichment-process-productivity-wolf",
	"nuclear-fuel-reprocessing-productivity-wolf",
	"solid-fuel-productivity-wolf",
	"uranium-fuel-cell-productivity-wolf",
	"processing-unit-productivity"
}

for i=1, #fulgoraProds do 
	utils.remove_packs(fulgoraProds[i], {"electromagnetic-science-pack"})
	utils.set_prerequisites(fulgoraProds[i], {"production-science-pack",fulgoraTech})
end


-- ######## Vulcanus ########
local vulcanusProds = {
	"concrete-productivity-wolf",
	"copper-cable-productivity-wolf",
	"copper-plate-productivity-wolf",
	"iron-gear-and-stick-productivity-wolf",
	"low-density-structure-productivity",
	"sulfuric-acid-productivity-wolf"
}

for i = 1, #vulcanusProds do 
	utils.remove_packs(vulcanusProds[i], {"metallurgic-science-pack"})
	utils.set_prerequisites(vulcanusProds[i], {"production-science-pack",vulcanusTech})
end

utils.remove_packs("stone-brick-productivity-wolf", {"electromagnetic-science-pack"})
utils.set_prerequisites("stone-brick-productivity-wolf", {"production-science-pack",vulcanusTech})



-- ######## Gleba ########
local glebaProds = {
	"landfill-productivity-wolf",
	"oil-productivity-wolf",
	"lubricant-productivity-wolf",
	"plastic-bar-productivity",
	"rocket-fuel-productivity",
	"sulfur-productivity-wolf",
	"wood-fish-productivity-wolf"
}

for i = 1, #glebaProds do 
	utils.remove_packs(glebaProds[i], {"agricultural-science-pack"})
	utils.set_prerequisites(glebaProds[i], {"production-science-pack",glebaTech})
end

 --[[
 			- Crude EM Plant
				advanced-circuit-productivity-wolf
				battery-productivity-wolf
				electronic-circuit-productivity-wolf
				kovarex-enrichment-process-productivity-wolf
				nuclear-fuel-reprocessing-productivity-wolf
				processing-unit-productivity (vanilla)
				solid-fuel-productivity-wolf
				uranium-fuel-cell-productivity-wolf
			- Crude Biochamber
				landfill-productivity-wolf
				oil-productivity-wolf
				lubricant-productivity-wolf
				plastic-bar-productivity (vanilla)
				rocket-fuel-productivity (vanilla)
				sulfur-productivity-wolf
				wood-fish-productivity-wolf
			- Crude Foundry
				concrete-productivity-wolf
				copper-cable-productivity-wolf
				copper-plate-productivity-wolf
				iron-gear-and-stick-productivity-wolf
				low-density-structure-productivity (vanilla)
				stone-brick-productivity-wolf (would be behind EM plant but feels better here)
				sulfuric-acid-productivity-wolf
 ]]