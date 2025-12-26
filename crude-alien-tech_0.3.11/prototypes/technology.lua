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
			},
			{
				type = "unlock-recipe",
				recipe = "cat-wood-decarbonization"
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
		prerequisites = {"processing-unit","electric-energy-accumulators","concrete"},
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
	{
		type = "technology",
		name = "cat-uncatalyzed-melting",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/foundry.png",
		unit = {
			count = 250,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"production-science-pack",1}
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-uncatalyzed-molten-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-uncatalyzed-molten-copper"
			},
		},
		prerequisites = {"production-science-pack"},
		essential = false
	},
	{ -- Lava synthesis ONLY for Vulcanus start.
		type = "technology",
		name = "cat-otherworldly-lava",
		icon_size = 256,
		icon = "__space-age__/graphics/technology/foundry.png",
		unit = {
			count = 300,
			ingredients = {
				{"automation-science-pack",1},
				{"logistic-science-pack",1},
				{"chemical-science-pack",1},
				{"space-science-pack",1}
			},
			time = 30
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "cat-uncatalyzed-molten-iron"
			},
			{
				type = "unlock-recipe",
				recipe = "cat-uncatalyzed-molten-copper"
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
		},
		prerequisites = {"foundry","space-science-pack"},
		essential = false,
		hidden = true
	},
})


-- Aquilo Branch

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
		effects = {
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
	},
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