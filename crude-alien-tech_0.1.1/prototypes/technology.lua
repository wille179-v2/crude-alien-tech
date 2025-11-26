--[[
TODO
Create or Update these technologies:
	Gleba
		✔️Earthly Roots
		✔️Dreaming of Greener Pastures
		✔️Fishy Feeling
		✔️The Fire of Life
		✔️Stellar Lifefirms
		✔️Candy Factory

		✔️Life Amongst the Stars
		✔️The Green Must Grow
		✔️Sweet Delicacies
		✔️Sour Delights
		✔️Organic Chef
		✔️Alien Treats
		✔️Seeding the Stars
		✔️You Know What Must Grow

		✔️Removed: Tree Seeding, Fish Breeding

	Fulgora
		✔️Bolt of Inspiration
		✔️Salvage Failed Efforts
		✔️Extract Rare Elements
		✔️Refine Rare Elements
		✔️Energize Innovation

		✔️Ride the Lightning
		✔️Reclaim Success
		✔️Iterate Upon Inspiration
		✔️Electrofied Invention


	Vulcanus:
		✔️Something's Rumbling
		✔️Wolfram's Might
		✔️Rock and Stone!
		✔️Cliff Collapse

		✔️Find the Forgeworld
		✔️Prospector's Perspective
		✔️Catalytic Crystals
		✔️Memory Metal


	Aquilo
		✔️Frozen Dreams
		✔️Cold Chemistry
		✔️Even Colder Chemistry
		✔️Permafrost Foundations
		
		✔️Frozen Nightmares
		✔️Ultimate Brainfreeze

]]

--[[
Template:
data:extend({
	{
		type = "technology",
		name = "cat-",
		icon_size = 64,
		icon = "__crude-alien-tech__/graphics/icon/cat-science-placecholder.png",
		--research_trigger = {
		--	type = "craft-item",
		--	item = "lab"
		--},
		unit = {
			count = 10,
			ingredients = {
				{"automation-science-pack",1}
			},
			time = 30
		}
		--effects = {
		--	{
		--		type = "unlock-recipe",
		--		recipe = ""
		--	},
		--},
		prerequisites = {""},
		essential = true
	},
})
]]

--Gleba Branch
data:extend({
	{ -- Earthly Roots
		type = "technology",
		name = "cat-earthly-roots",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/agriculture.png",
		unit = {
			count = 100,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-agricultural-tower-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "wood-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "nutrients-from-spoilage"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-wood-to-nutrients"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-wood-to-nooberry"
			}
		},
		prerequisites = {"landfill","automation-2","chemical-science-pack"},
		essential = true
	},
	{ -- Dreaming of Greener Pastures
		type = "technology",
		name = "cat-dreaming-of-greener-pastures",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/biochamber.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-biochamber-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "nutrients-from-yumako-mash"
			},
			{
				type = "unlock-recipe",
				recipe = "burnt-spoilage"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-nooberry-to-jelly"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-nooberry-to-mash"
			},
		},
		prerequisites = {"cat-earthly-roots"},
		essential = true
	},
})

local function processGlebaTech ()

	local treeSeeding = data.raw["technology"]["tree-seeding"]
	treeSeeding.enabled = false
	treeSeeding.hidden = true

	local fishBreeding = data.raw["technology"]["fish-breeding"] -- Fishy Feeling
	fishBreeding.unit = {
		count = 100,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
			{"chemical-science-pack",1},
		},
		time = 15
	}
	fishBreeding.prerequisites = {"cat-dreaming-of-greener-pastures"}

	local heatingTower = data.raw["technology"]["heating-tower"]
	heatingTower.prerequisites = {"cat-dreaming-of-greener-pastures","concrete"}
	heatingTower.research_trigger = {
		type = "craft-item",
		item = {
			name = "nutrients",
			count = 10
		}
	}

	local agriculture = data.raw["technology"]["agriculture"]
	effects = {
		{
			type = "unlock-recipe",
			recipe = "agricultural-tower"
		}
	}

	local bioflux = data.raw["technology"]["bioflux"]
	bioflux.prerequisites = {"cat-dreaming-of-greener-pastures"}
	bioflux.research_trigger = {
		type = "build-entity",
		entity = {
			name = "cat-biochamber-mk1"
		}
	}

	local bacteriaCultivation = data.raw["technology"]["bacteria-cultivation"]
	bacteriaCultivation.effects = {
		{
			type = "unlock-recipe",
			recipe = "copper-bacteria"
		},
		{
			type = "unlock-recipe",
			recipe = "iron-bacteria"
		},
		{
			type = "unlock-recipe",
			recipe = "copper-bacteria-cultivation"
		},
		{
			type = "unlock-recipe",
			recipe = "iron-bacteria-cultivation"
		},
	}

	local biofluxProcessing = data.raw["technology"]["bioflux-processing"]
	biofluxProcessing.prerequisites = {"bioflux","rocket-fuel"}

	local planetDiscoveryGleba = data.raw["technology"]["planet-discovery-gleba"]
	planetDiscoveryGleba.prerequisites = {"bioflux-processing","bacteria-cultivation","space-platform-thruster","heating-tower"}

	local artificialSoil = data.raw["technology"]["artificial-soil"]
	artificialSoil.enabled = false
	artificialSoil.hidden = true

	local yumako = data.raw["technology"]["yumako"]
	yumako.effects = {
		{
			type = "unlock-recipe",
			recipe = "yumako-processing"
		},
		{
			type = "unlock-recipe",
			recipe = "artificial-yumako-soil"
		}
	}
	local jellynut = data.raw["technology"]["jellynut"]
	jellynut.effects = {
		{
			type = "unlock-recipe",
			recipe = "jellynut-processing"
		},
		{
			type = "unlock-recipe",
			recipe = "artificial-jellynut-soil"
		}
	}

	local biochamber = data.raw["technology"]["biochamber"]
	biochamber.research_trigger = {
		type = "build-entity",
		entity = "agricultural-tower"
	}

	local agriculturalSciencePack = data.raw["technology"]["agricultural-science-pack"]
	agriculturalSciencePack.prerequisites = {"planet-discovery-gleba","yumako","jellynut","biochamber"}
	agriculturalSciencePack.research_trigger = {
		type = "build-entity",
		entity = "biochamber"
	}


	--data:extend{treeSeeding,fishBreeding,heatingTower,bacteriaCultivation,planetDiscoveryGleba,artificialSoil,yumako,jellynut,agriculturalSciencePack}
end

processGlebaTech()

-- Fulgora Branch

data:extend({
	{--Bolt of Inspiration
		type = "technology",
		name = "cat-bolt-of-inspiration",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/electromagnetic-plant.png",
		unit = {
			count = 300,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-electromagnetic-plant-mk1"
			}
		},
		prerequisites = {"processing-unit","electric-energy-accumulators"},
		essential = true
	},
	{--Salvage Failed Efforts
		type = "technology",
		name = "cat-salvage-failed-efforts",
		icon_size = 256,
		icon = "__quality__/graphics/technology/recycling.png",
		unit = {
			count = 250,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-recycler-mk1"
			}
		},
		prerequisites = {"processing-unit","concrete"},
		essential = true
	},
	{--Extract Rare Elements
		type = "technology",
		name = "cat-extract-rare-elements",
		icon_size = 64,
		icon = "__space-age__/graphics/icons/holmium-ore.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-sand"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-holmium-ore-sifting"
			}
		},
		prerequisites = {"cat-bolt-of-inspiration"},
		essential = true
	},
	{--Energize Innovation
		type = "technology",
		name = "cat-energize-innovation",
		icon_size = 64,
		icon = "__space-age__/graphics/icons/lightning.png",
		unit = {
			count = 300,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "electrolyte"
			},
			{
				type = "unlock-recipe",
				recipe = "supercapacitor"
			},
			{
				type = "unlock-recipe",
				recipe = "superconductor"
			},
		},
		prerequisites = {"holmium-processing"},
		essential = true
	},

})

local holmiumProcessing = data.raw["technology"]["holmium-processing"]
holmiumProcessing.prerequisites = {"cat-extract-rare-elements"}

local planetDiscoveryFulgora = data.raw["technology"]["planet-discovery-fulgora"]
planetDiscoveryFulgora.prerequisites = {"cat-extract-rare-elements","cat-salvage-failed-efforts","space-platform-thruster"}

local recycling = data.raw["technology"]["recycling"]
recycling.prerequisites = {"planet-discovery-fulgora","cat-salvage-failed-efforts"}

local electromagneticPlant = data.raw["technology"]["electromagnetic-plant"]
electromagneticPlant.prerequisites = {"planet-discovery-fulgora","holmium-processing"}
electromagneticPlant.research_trigger = table.deepcopy(recycling.research_trigger)

local electromagneticSciencePack = data.raw["technology"]["electromagnetic-science-pack"]
electromagneticSciencePack.prerequisites = {"cat-energize-innovation","electromagnetic-plant"}
electromagneticSciencePack.research_trigger = {
	type = "build-entity",
	entity = "electromagnetic-plant"
}


-- Vulcanus Branch
data:extend({
	{
		type = "technology",
		name = "cat-somethings-rumbling",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/foundry.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-foundry-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-sand"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-sand-brick"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-lava"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-impure-molten-copper"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-impure-molten-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-purify-molten-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-purify-molten-copper"
			},
			{
				type = "unlock-recipe",
				recipe = "concrete-from-molten-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-low-density-structure"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-steel"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-copper"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-iron-gear-wheel"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-iron-stick"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-pipe"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-pipe-to-ground"
			},
			{
				type = "unlock-recipe",
				recipe = "casting-copper-cable"
			},
		},
		prerequisites = {"lubricant","concrete","low-density-structure"},
		essential = true
	},
	{
		type = "technology",
		name = "cat-wolframs-might",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/tungsten-carbide.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "carbon"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-pure-sand"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-tungsten-ore"
			},
			{
				type = "unlock-recipe",
				recipe = "tungsten-carbide"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-pure-sand-brick"
			}
		},
		prerequisites = {"cat-somethings-rumbling"},
		essential = true
	},
	{
		type = "technology",
		name = "cat-rock-and-stone",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/big-mining-drill.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-big-mining-drill-mk1"
			},
		},
		prerequisites = {"cat-somethings-rumbling","electric-engine"},
		essential = true
	},
})

local planetDiscoveryVulcanus = data.raw["technology"]["planet-discovery-vulcanus"]
planetDiscoveryVulcanus.prerequisites = {"space-platform-thruster","cat-rock-and-stone","cat-wolframs-might"}

local tungstenCarbide = data.raw["technology"]["tungsten-carbide"]
	tungstenCarbide.enabled = false
	tungstenCarbide.hidden = true

local foundry = data.raw["technology"]["foundry"]
foundry.research_trigger = table.deepcopy(data.raw["technology"]["tungsten-carbide"].research_trigger)
foundry.prerequisites = {"calcite-processing"}



-- Aquilo Branch

local coldChemistryEffects = {
	{
		type = "unlock-recipe",
		recipe = "cat-hydrofluoric-acid"
	},
	{
		type = "unlock-recipe",
		recipe = "cat-electrolysis"
	},
	{
		type = "unlock-recipe",
		recipe = "cat-air-separation"
	},
	{
		type = "unlock-recipe",
		recipe = "cat-fluorine"
	},
	{
		type = "unlock-recipe",
		recipe = "cat-ammonia"
	},
	{
		type = "unlock-recipe",
		recipe = "cat-lithium-brine"
	},
}

if not mods["Flare Stack"] then
	table.insert(coldChemistryEffects,{type = "unlock-recipe", recipe = "cat-vent-oxygen"})
	table.insert(coldChemistryEffects,{type = "unlock-recipe", recipe = "cat-vent-hydrogen"})
	table.insert(coldChemistryEffects,{type = "unlock-recipe", recipe = "cat-vent-nitrogen"})
end
 
-- TODO Ammonia Synthesis, Fluorine Synthesis, Lithium Synthesis, Air Filtering, Electrolysis, Gas Venting


data:extend({
	{
		type = "technology",
		name = "cat-frozen-dreams",
				icon_size = 256,
		icon = "__space-age__/graphics/technology/cryogenic-plant.png",
		unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"production-science-pack",1},
				{"utility-science-pack",1},
				{"space-science-pack",1},
			},
			time = 45
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-cryogenic-plant-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-ice"
			}
		},
		prerequisites = {"cat-rock-and-stone","cat-energize-innovation","cat-salvage-failed-efforts","heating-tower","cat-dreaming-of-greener-pastures"},
		essential = true
	},
	{
		type = "technology",
		name = "cat-cold-chemistry",
		icon_size = 64,
		icon = "__space-age__/graphics/icons/fluorine-vent.png",
		unit = {
			count = 500,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"production-science-pack",1},
				{"space-science-pack",1},
			},
			time = 45
		},
		effects = coldChemistryEffects,
		prerequisites = {"cat-frozen-dreams"},
		essential = true
	},
})

--Oxygen Fuels
local hideOxygen = not settings.startup["oxygen-fuels"].value

if not hideOxygen then
	local rocketFuelProductivityEffects = data.raw["technology"]["rocket-fuel-productivity"].effects
	table.insert(rocketFuelProductivityEffects,2,{type = "change-recipe-productivity", recipe = "cat-oxygenated-rocket-fuel", change = 0.1})
	table.insert(rocketFuelProductivityEffects,4,{type = "change-recipe-productivity", recipe = "cat-oxygenated-rocket-fuel-from-jelly", change = 0.1})
	table.insert(rocketFuelProductivityEffects,6,{type = "change-recipe-productivity", recipe = "cat-oxygenated-ammonia-rocket-fuel", change = 0.1})
end

data:extend({
	{
		type = "technology",
		name = "cat-a-breath-of-cold-air",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/rocket-fuel-productivity.png",
		unit = {
			count = 250,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"production-science-pack",1},
				{"space-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-rocket-fuel"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-rocket-fuel-from-jelly"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-solid-fuel-from-heavy-oil"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-solid-fuel-from-light-oil"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-solid-fuel-from-petroleum-gas"
			},
		},
		prerequisites = {"cat-cold-chemistry"},
		essential = false,
		hidden = hideOxygen
	},
	{
		type = "technology",
		name = "cat-lung-freezing-air",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/rocket-fuel-productivity.png",
		unit = {
			count = 200,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"production-science-pack",1},
				{"space-science-pack",1},
				{"cryogenic-science-pack",1},
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-ammonia-rocket-fuel"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-oxygenated-solid-fuel-from-ammonia"
			},
		},
		prerequisites = {"cat-a-breath-of-cold-air","cryogenic-science-pack"},
		essential = false,
		hidden = hideOxygen
	},
})


local lithiumProcessing = data.raw["technology"]["lithium-processing"]
lithiumProcessing.research_trigger = {
	type = "craft-fluid",
	fluid = "lithium-brine"
}
lithiumProcessing.prerequisites = {"cat-cold-chemistry"}

local planetDiscoveryAquilo = data.raw["technology"]["planet-discovery-aquilo"]
planetDiscoveryAquilo.prerequisites = {
	"lithium-processing",
	"electromagnetic-science-pack",
	"advanced-asteroid-processing",
	"asteroid-reprocessing",
	"rocket-turret"
}

local cryogenicPlant = data.raw["technology"]["cryogenic-plant"]
cryogenicPlant.research_trigger = {
	type = "mine-entity",
	entity = "lithium-iceberg-big"
}
cryogenicPlant.prerequisites = {"planet-discovery-aquilo"}