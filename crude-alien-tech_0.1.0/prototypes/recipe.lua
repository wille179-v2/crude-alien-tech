--[[
TODO:
	Recipes to create:
		✔️- Mk1 Foundry
		✔️- Mk1 Big Mining Drill
		✔️- Mk1 Recycler
		✔️- Mk1 Electromagnetic Plant
		✔️- Mk1 Agricultural Tower
		✔️- Mk1 Biochamber
		✔️- Mk1 Cryogenic Plant

		Gleba:
			✔️- Nooberry to Fruit Mash
			✔️- Nooberry to Jelly
			✔️- Wood to Nutrients
			✔️- Wood to Nooberry

		Fulgora:
			✔️- Holmium Ore Extraction

		Vulcanus:
			✔️- Lava Synthesis
			✔️- Impure molten iron
			✔️- Impure molten copper
			✔️- Tungsten Extraction

		Aquilo:
			✔️- Fluorine Synthesis
			✔️- Ammonia Synthesis
			✔️- Lithium Brine Synthesis

		Generic:
			✔️- Sand
			✔️- Pure Sand
			✔️- Ice Freezing

		- Oxygenated Rocket Fuel from
			✔️- Oil
			✔️- Ammonia
			✔️- Jelly
		- Oxygenated Solid Fuel from
			✔️- Light Oil
			✔️- Heavy Oil
			✔️- Petrolium Gas
			✔️- Ammonia

		- Venting
			✔️- Oxygen Venting (if Flare Stack not intalled)
			✔️- Nitrogen Venting (if Flare Stack not intalled)
			✔️- Hydrogen Venting (if Flare Stack not intalled)
			✔️- Sand to Bricks

	Recipes to update:
		✔️- Mk2 Foundry
		✔️- Mk2 Big Mining Drill
		✔️- Mk2 Recycler
		✔️- Mk2 Electromagnetic Plant
		✔️- Mk2 Agricultural Tower
		✔️- Mk2 Biochamber
		✔️- Mk2 Cryogenic Plant
]]

--[[
Crafting Categories:
	Cryogenic Plant: "cryogenics", "chemistry-or-cryogenics","cryogenics-or-assembling"
	Biochamber: "organic", "organic-or-hand-crafting", "organic-or-assembling","organic-or-chemistry"
	Electromagnetic Plant: "electromagnetics", "electronics", "electronics-with-fluid","electronics-or-assembling"
	Foundry: "metallurgy","pressing","crafting-with-fluid-or-metallurgy","metallurgy-or-assembling"

	Default categories for recipes:
		Foundry = "metallurgy-or-assembling"
		Electromagnetic Plant = "electronics-or-assembling"
		Biochamber = "organic-or-assembling"
		Cryogenic Plant = "cryogenics-or-assembling"
]]

--TODO: Remove this sand filtering setup from here and make the alterations in data-updates.lua

local sandType = "cat-sand"
local pureSandType = "cat-pure-sand"

if mods["planetaris-arig"] then
	sandType = "planetaris-sand"
	pureSandType = "planetaris-pure-sand"
end

-- Mk1 Buildings
data:extend({
	{ --Mk1 Foundry
		-- 10 Electronic Circuits + 20 Lubricant + 10 Concrete + 20 Steel + 50 Iron Plate
		type = "recipe",
		name = "cat-foundry-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "electronic-circuit", amount = 10},
			{type = "fluid",name = "lubricant", amount = 20},
			{type = "item",name = "concrete", amount = 10},
			{type = "item",name = "steel-plate", amount = 20},
			{type = "item",name = "iron-plate", amount = 50},
		},
		results = {
			{type = "item", name = "cat-foundry-mk1", amount = 1}
		},
		category = "metallurgy-or-assembling",
		energy_required = 8,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Big Mining Drill
		--5 Advanced Circuits + 5 Electric Engine Units + 1 Electric Mining Drill + 100 Molten Iron
		type = "recipe",
		name = "cat-big-mining-drill-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "advanced-circuit", amount = 5},
			{type = "item",name = "electric-engine-unit", amount = 5},
			{type = "item",name = "electric-mining-drill", amount = 1},
			{type = "fluid",name = "molten-iron", amount = 100},
		},
		results = {
			{type = "item", name = "cat-big-mining-drill-mk1", amount = 1}
		},
		category = "metallurgy",
		energy_required = 25,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Recycler
		-- 4 Advanced Circuits + 20 Gears + 10 Concrete + 10 Steel
		type = "recipe",
		name = "cat-recycler-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "advanced-circuit", amount = 4},
			{type = "item",name = "iron-gear-wheel", amount = 20},
			{type = "item",name = "concrete", amount = 10},
			{type = "item",name = "steel-plate", amount = 10},
		},
		results = {
			{type = "item", name = "cat-recycler-mk1", amount = 1}
		},
		category = "crafting",
		energy_required = 2.5,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Electromagnetic Plant
		-- 30 Processing Units + 30 Refined Concrete + 30 Steel
		type = "recipe",
		name = "cat-electromagnetic-plant-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "processing-unit", amount = 30},
			{type = "item",name = "refined-concrete", amount = 30},
			{type = "item",name = "steel-plate", amount = 30},
		},
		results = {
			{type = "item", name = "cat-electromagnetic-plant-mk1", amount = 1}
		},
		category = "electronics-or-assembling",
		energy_required = 8,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Agricultural Tower
		--2 Electronic Circuits + 1 Landfill + 10 Spoilage + 8 Steel
		type = "recipe",
		name = "cat-agricultural-tower-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "electronic-circuit", amount = 2},
			{type = "item",name = "landfill", amount = 1},
			{type = "item",name = "spoilage", amount = 10},
			{type = "item",name = "steel-plate", amount = 8},
		},
		results = {
			{type = "item", name = "cat-agricultural-tower-mk1", amount = 1}
		},
		category = "crafting",
		energy_required = 8,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Biochamber
		--1 Electronic Circuits + 1 Landfill + 10 Iron Plate + 5 Nutrients
		type = "recipe",
		name = "cat-biochamber-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "electronic-circuit", amount = 1},
			{type = "item",name = "landfill", amount = 1},
			{type = "item",name = "iron-plate", amount = 10},
			{type = "item",name = "nutrients", amount = 5},
		},
		results = {
			{type = "item", name = "cat-biochamber-mk1", amount = 1}
		},
		category = "organic-or-assembling",
		energy_required = 16,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
	},
	{ --Mk1 Cryogenic Plant
		--20 Steel + 10 Processing Units + 40 Refined Concrete + 20 copper cable
		type = "recipe",
		name = "cat-cryogenic-plant-mk1",
		enabled = false,
		ingredients = {
			{type = "item",name = "steel-plate", amount = 20},
			{type = "item",name = "processing-unit", amount = 10},
			{type = "item",name = "refined-concrete", amount = 40},
			{type = "item",name = "superconductor", amount = 10},
		},
		results = {
			{type = "item", name = "cat-cryogenic-plant-mk1", amount = 1}
		},
		category = "cryogenics-or-assembling",
		energy_required = 8,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false
		
	},
})

-- Mk2 Buildings
if settings.startup["use-chain-recipe"].value then
	local foundryMk2 = data.raw["recipe"]["foundry"]
	local bigMiningDrillMk2 = data.raw["recipe"]["big-mining-drill"]
	local recyclerMk2 = data.raw["recipe"]["recycler"]
	local electromagneticPlantMk2 = data.raw["recipe"]["electromagnetic-plant"]
	local agriculturalTowerMk2 = data.raw["recipe"]["agricultural-tower"]
	local biochamberMk2 = data.raw["recipe"]["biochamber"]
	local cryogenicPlantMk2 = data.raw["recipe"]["cryogenic-plant"]

	foundryMk2.ingredients = {
		--20 Electronic Circuits + 20 Refined Concrete + 30 Steel + 50 Tungsten Carbide + 1 Mk1 Foundry.
		{type = "item",name = "electronic-circuit", amount = 20},
		{type = "item",name = "refined-concrete", amount = 20},
		{type = "item",name = "steel-plate", amount = 30},
		{type = "item",name = "tungsten-carbide", amount = 50},
		{type = "item",name = "cat-foundry-mk1", amount = 1},
	}
	bigMiningDrillMk2.ingredients = {
		--5 Advanced Circuits + 5 Electric Engine Units + 1 Mk1 Big Mining Drill + 100 Molten Iron
		{type = "item",name = "advanced-circuit", amount = 5},
		{type = "item",name = "electric-engine-unit", amount = 5},
		{type = "fluid",name = "molten-iron", amount = 100},
		{type = "item",name = "cat-big-mining-drill-mk1", amount = 1},
	}
	recyclerMk2.ingredients = {
		--4 Processing Units + 20 Gears + 10 Concrete + 10 Steel + Mk1 Recycler
		{type = "item",name = "processing-unit", amount = 4},
		{type = "item",name = "iron-gear-wheel", amount = 20},
		{type = "item",name = "concrete", amount = 10},
		{type = "item",name = "steel-plate", amount = 10},
		{type = "item",name = "cat-recycler-mk1", amount = 1},
	}
	electromagneticPlantMk2.ingredients = {
		--150 Holmium Plates + 20 Processing Units + 20 Refined Concrete + 20 Steel + 1 Mk1 EM Plant
		{type = "item",name = "holmium-plate", amount = 150},
		{type = "item",name = "processing-unit", amount = 20},
		{type = "item",name = "refined-concrete", amount = 20},
		{type = "item",name = "steel-plate", amount = 20},
		{type = "item",name = "cat-electromagnetic-plant-mk1", amount = 1},
	}
	agriculturalTowerMk2.ingredients = {
		--1 Electronic Circuit + 1 Landfill + 10 Spoilage + 2 Steel + 1 Mk1 Agricultrual Tower.
		{type = "item",name = "electronic-circuit", amount = 1},
		{type = "item",name = "landfill", amount = 1},
		{type = "item",name = "spoilage", amount = 10},
		{type = "item",name = "steel-plate", amount = 2},
		{type = "item",name = "cat-electromagnetic-plant-mk1", amount = 1},
	}
	biochamberMk2.ingredients = {
		--4 Electronic Circuits + 1 Landfill + 5 Nutrients + 1 Pentapod Egg + 1 Mk1. Biochamber
		{type = "item",name = "electronic-circuit", amount = 4},
		{type = "item",name = "landfill", amount = 1},
		{type = "item",name = "nutrients", amount = 5},
		{type = "item",name = "pentapod-egg", amount = 1},
		{type = "item",name = "cat-biochamber-mk1", amount = 1},
	}
	cryogenicPlantMk2.ingredients = {
		--20 Lithium Plate + 10 Processing Units + 20 Superconductors + 1 Mk1 Cryogenic Plant
		{type = "item",name = "lithium-plate", amount = 20},
		{type = "item",name = "processing-unit", amount = 10},
		{type = "item",name = "superconductor", amount = 10},
		{type = "item",name = "cat-cryogenic-plant-mk1", amount = 1},
	}

	data:extend({
		foundryMk2,
		bigMiningDrillMk2,
		recyclerMk2,
		electromagneticPlantMk2,
		agriculturalTowerMk2,
		biochamberMk2,
		cryogenicPlantMk2
	})
end

-- Gleba Recipes
data:extend({
	{
		type = "recipe",
		name = "cat-wood-to-nutrients",
		enabled = false,
		ingredients = {
			{type = "item", name = "wood", amount = 1}
		},
		results = {
			{type = "item", name = "nutrients", amount = 3, percent_spoiled = 0.25}
		},
		category = "organic-or-assembling",
		energy_required = 2.5,
		allow_productivity = true
	},
	{
		type = "recipe",
		name = "cat-wood-to-nooberry",
		enabled = false,
		ingredients = {
			{type = "item", name = "wood", amount = 2},
			{type = "fluid", name = "water", amount = 20}
		},
		results = {
			{type = "item", name = "cat-nooberry", amount = 10}
		},
		category = "organic-or-assembling",
		energy_required = 4,
		allow_productivity = true
	},
	{
		type = "recipe",
		name = "cat-nooberry-to-jelly",
		enabled = false,
		ingredients = {
			{type = "item", name = "cat-nooberry", amount = 1},
			{type = "fluid", name = "water", amount = 20}
		},
		results = {
			{type = "item", name = "jelly", amount = 4}
		},
		category = "organic-or-hand-crafting",
		energy_required = 4,
		allow_productivity = true
	},
	{
		type = "recipe",
		name = "cat-nooberry-to-mash",
		enabled = false,
		ingredients = {
			{type = "item", name = "cat-nooberry", amount = 1},
		},
		results = {
			{type = "item", name = "yumako-mash", amount = 2}
		},
		category = "organic-or-hand-crafting",
		energy_required = 4,
		allow_productivity = true
	},
})

local ironBacteria = data.raw["recipe"]["iron-bacteria"]
local copperBacteria = data.raw["recipe"]["copper-bacteria"]
local ironBacteriaCultivation = data.raw["recipe"]["iron-bacteria-cultivation"]
local copperBacteriaCultivation = data.raw["recipe"]["copper-bacteria-cultivation"]

ironBacteria.surface_conditions = nil
copperBacteria.surface_conditions = nil
ironBacteriaCultivation.surface_conditions = nil
copperBacteriaCultivation.surface_conditions = nil

data:extend{ironBacteria,copperBacteria,ironBacteriaCultivation,copperBacteriaCultivation}

-- Fulgora recipes

data:extend({
	{
		type = "recipe",
		name = "cat-holmium-ore-sifting",
		icon = "__crude-alien-tech__/graphics/icon/holmium-sifting.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = sandType, amount = 100},
			{type = "fluid", name = "sulfuric-acid", amount = 10}
		},
		results = {
			{type = "fluid", name = sandType, amount = 90, ignored_by_productivity = 90},
			{type = "item", name = "holmium-ore", amount = 1, probability = 0.25}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fulgora-processes"
	},
})

-- Vulcanus recipes
data:extend({
	{
		type = "recipe",
		name = "cat-lava",
		enabled = false,
		ingredients = {
			{type = "fluid", name = sandType, amount = 500},
			{type = "item", name = "iron-ore", amount = 1},
			{type = "item", name = "copper-ore", amount = 1}
		},
		results = {
			{type = "fluid", name = "lava", amount = 500}
		},
		category = "metallurgy",
		energy_required = 20,
		allow_productivity = true,
		subgroup = "vulcanus-processes"
	},
	--[[{
		type = "recipe",
		name = "cat-tungsten-ore",
		enabled = false,
		ingredients = {
			{type = "fluid", name = pureSandType, amount = 50},
			{type = "fluid", name = "sulfuric-acid", amount = 5}
		},
		results = {
			{type = "item", name = "tungsten-ore", amount = 4}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
	},]]
	{
		type = "recipe",
		name = "cat-impure-molten-iron",
		enabled = false,
		ingredients = {
			{type = "fluid", name = "lava", amount = 500},
			{type = "item", name = "iron-ore", amount = 1}
		},
		results = {
			{type = "fluid", name = "cat-impure-molten-iron", amount=500}
		},
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
	},
	{
		type = "recipe",
		name = "cat-impure-molten-copper",
		enabled = false,
		ingredients = {
			{type = "fluid", name = "lava", amount = 500},
			{type = "item", name = "copper-ore", amount = 1}
		},
		results = {
			{type = "fluid", name = "cat-impure-molten-copper", amount=500}
		},
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
	},
	{
		type = "recipe",
		name = "cat-purify-molten-copper",
		icon = "__crude-alien-tech__/graphics/icon/purify-molten-copper.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-impure-molten-copper", amount = 500},
		},
		results = {
			{type = "fluid", name = "molten-copper", amount=200},
			{type = "item", name = "stone", amount = 10}
		},
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[copper]"
	},
	{
		type = "recipe",
		name = "cat-purify-molten-iron",
		icon = "__crude-alien-tech__/graphics/icon/purify-molten-iron.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-impure-molten-iron", amount = 500},
		},
		results = {
			{type = "fluid", name = "molten-iron", amount=200},
			{type = "item", name = "stone", amount = 10}
		},
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[iron]"
	},
	{
		type = "recipe",
		name = "cat-tungsten-ore",
		icon = "__space-age__/graphics/icons/tungsten-ore.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = pureSandType, amount = 50},
			{type = "fluid", name = "sulfuric-acid", amount = 5},
		},
		results = {
			{type = "item", name = "tungsten-ore", amount = 4}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[iron]"
	},
})


-- Aquilo recipes
data:extend({
	{ --hydrofluoric acid
		type = "recipe",
		name = "cat-hydrofluoric-acid",
		icon = "__crude-alien-tech__/graphics/icon/hydrogen-fluoride-bobs.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = sandType, amount = 50},
			{type = "fluid", name = "sulfuric-acid", amount = 50},
			{type = "fluid", name = "water", amount = 100},
		},
		results = {
			{type = "fluid", name = "cat-hydrofluoric-acid", amount = 10},
			{type = "fluid", name = pureSandType, amount = 10},
		},
		category = "cryogenics",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "fluid-recipes"
	},
	{ -- electrolysis
		type = "recipe",
		name = "cat-electrolysis",
		icon = "__crude-alien-tech__/graphics/icon/heavy-water-bobs.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "water", amount = 100},
		},
		results = {
			{type = "fluid", name = "cat-hydrogen", amount = 66},
			{type = "fluid", name = "cat-oxygen", amount = 33},
		},
		category = "chemistry-or-cryogenics",
		energy_required = 2,
		allow_productivity = false,
		subgroup = "fluid-recipes"
	},
	{ -- air separation
		type = "recipe",
		name = "cat-air-separation",
		icon = "__crude-alien-tech__/graphics/icon/air-bobs.png",
		icon_size = 32,
		enabled = false,
		ingredients = {},
		results = {
			{type = "fluid", name = "cat-nitrogen", amount = 78},
			{type = "fluid", name = "cat-oxygen", amount = 21},
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes"
	},
	{ -- fluorine
		type = "recipe",
		name = "cat-fluorine",
		icon = "__space-age__/graphics/icons/fluid/fluorine.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-hydrofluoric-acid", amount = 10},
			{type = "fluid", name = "water", amount = 10},
		},
		results = {
			{type = "fluid", name = "steam", amount = 15, temperature = 500, ignored_by_productivity = 15},
			{type = "fluid", name = "fluorine", amount = 10},
		},
		main_product = "fluorine",
		category = "cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes"
	},
	{ -- ammonia
		type = "recipe",
		name = "cat-ammonia",
		icon = "__space-age__/graphics/icons/fluid/ammonia.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-nitrogen", amount = 20},
			{type = "fluid", name = "cat-hydrogen", amount = 60},
		},
		results = {
			{type = "fluid", name = "ammonia", amount = 20},
		},
		category = "cryogenics",
		energy_required = 2,
		allow_productivity = true,
		subgroup = "fluid-recipes"
	},
	{ -- lithium brine
		type = "recipe",
		name = "cat-lithium-brine",
		icon = "__space-age__/graphics/icons/fluid/lithium-brine.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "water", amount = 50},
			{type = "item", name = "stone", amount = 50},
			{type = "item", name = "ice", amount = 5}
		},
		results = {
			{type = "fluid", name = "lithium-brine", amount = 10},
			{type = "item", name = "stone", amount = 40, ignored_by_productivity = 80},
			{type = "fluid", name = "steam", amount = 50, temperature = 500, ignored_by_productivity = 50},
		},
		main_product = "lithium-brine",
		category = "cryogenics",
		energy_required = 15,
		allow_productivity = true,
		subgroup = "fluid-recipes"
	},
})

-- Generic Recipes
data:extend({
	{ -- sand
		type = "recipe",
		name = "cat-sand",
		icon = "__crude-alien-tech__/graphics/icon/sand.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "item", name = "stone", amount = 50}
		},
		results = {
			{type = "fluid", name = sandType, amount = 500}
		},
		category = "metallurgy-or-assembling",
		energy_required = 20,
		allow_productivity = true,
		alternative_unlock_methods = {"cat-somethings-rumbling"},
		subgroup = "fluid-recipes",
	},
	{ -- pure sand
		type = "recipe",
		name = "cat-pure-sand",
		icon = "__crude-alien-tech__/graphics/icon/pure-sand.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = sandType, amount = 50}
		},
		results = {
			{type = "fluid", name = pureSandType, amount = 45},
			{type = "item", name = "iron-ore", amount_min = 1, amount_max = 2, probability = 0.1},
			{type = "item", name = "copper-ore", amount_min = 1, amount_max = 2, probability = 0.1}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes",
	},
	{ -- ice
		type = "recipe",
		name = "cat-ice",
		icon = "__space-age__/graphics/icons/ice.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "water", amount = 20}
		},
		results = {
			{type = "item", name = "ice", amount = 1}
		},
		category = "cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes"
	},
	{ -- sand to brick
		type = "recipe",
		name = "cat-sand-brick",
		icon = "__crude-alien-tech__/graphics/icon/sand-stone-brick.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = sandType, amount = 20}
		},
		results = {
			{type = "item", name = "stone-brick", amount = 1}
		},
		category = "metallurgy",
		order = "a[stone-brick]-b",
		energy_required = 3,
		allow_productivity = true,
		subgroup = "terrain",
		hidden_from_player_crafting = true
	},
	{ -- pure sand to brick
		type = "recipe",
		name = "cat-pure-sand-brick",
		icon = "__crude-alien-tech__/graphics/icon/pure-sand-stone-brick.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = pureSandType, amount = 15}
		},
		results = {
			{type = "item", name = "stone-brick", amount = 1}
		},
		category = "metallurgy",
		order = "a[stone-brick]-c",
		energy_required = 2,
		allow_productivity = true,
		subgroup = "terrain",
		hidden_from_player_crafting = true
	},
})

-- Gas Venting
data:extend({
	{ -- vent oxygen
		type = "recipe",
			name = "cat-vent-oxygen",
		icon = "__crude-alien-tech__/graphics/icon/no-oxygen.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-oxygen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[o]",
	},
	{ -- vent hydrogen
		type = "recipe",
		name = "cat-vent-hydrogen",
		icon = "__crude-alien-tech__/graphics/icon/no-hydrogen.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-hydrogen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[h]",
	},
	{ -- vent nitrogen
		type = "recipe",
		name = "cat-vent-nitrogen",
		icon = "__crude-alien-tech__/graphics/icon/no-nitrogen.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "cat-nitrogen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[n]",
	},
})

-- Oxygen Fuels
local hideFuels = not settings.startup["oxygen-fuels"].value

data:extend({
	{ -- Rocket Fuel from Oil Products
		type = "recipe",
		name = "cat-oxygenated-rocket-fuel",
		icon = "__base__/graphics/icons/rocket-fuel.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["rocket-fuel"].icon_size,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "light-oil", amount = 15},
			{type = "item", name = "solid-fuel", amount = 15},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "organic-or-chemistry",
		energy_required = 15,
		allow_productivity = true,
		subgroup = "intermediate-product",
		order = "d[rocket-parts]-b[rocket-fuel]-a",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Rocket Fuel from Jelly
		type = "recipe",
		name = "cat-oxygenated-rocket-fuel-from-jelly",
		icon = "__space-age__/graphics/icons/rocket-fuel-from-jelly.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["rocket-fuel-from-jelly"].icon_size,
		enabled = false,
		ingredients = {
			{type = "item", name = "bioflux", amount = 3},
			{type = "item", name = "jelly", amount = 45},
			{type = "fluid", name = "water", amount = 45},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "organic",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "agriculture-products",
		order = "d[rocket-parts]-b[rocket-fuel]-b",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Rocket Fuel from Ammonia
		type = "recipe",
		name = "cat-oxygenated-ammonia-rocket-fuel",
		icon = "__space-age__/graphics/icons/ammonia-rocket-fuel.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["ammonia-rocket-fuel"].icon_size,
		enabled = false,
		ingredients = {
			{type = "item", name = "solid-fuel", amount = 15},
			{type = "fluid", name = "water", amount = 75},
			{type = "fluid", name = "ammonia", amount = 750},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "aquilo-processes",
		order = "d[rocket-parts]-b[rocket-fuel]-c",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Solid Fuel from Light Oil
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-light-oil",
		icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["solid-fuel-from-light-oil"].icon_size,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "light-oil", amount = 15},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "raw-material",
		order = "b[fluid-chemistry]-e[solid-fuel-from-light-oil]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Solid Fuel from Heavy Oil
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-heavy-oil",
		icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["solid-fuel-from-heavy-oil"].icon_size,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 30},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "raw-material",
		order = "b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Solid Fuel from Petrolium Gas
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-petroleum-gas",
		icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["solid-fuel-from-petroleum-gas"].icon_size,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "petroleum-gas", amount = 30},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "raw-material",
		order = "b[fluid-chemistry]-e[solid-fuel-from-petroleum-gas]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
	{ -- Solid Fuel from Ammonia
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-ammonia",
		icon = "__space-age__/graphics/icons/solid-fuel-from-ammonia.png",
		icon_size = 64,
		--icon_size = data.raw["recipe"]["solid-fuel-from-ammonia"].icon_size,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "ammonia", amount = 45},
			{type = "fluid", name = "crude-oil", amount = 18},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "solid-fuel", amount = 4}
		},
		category = "cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "aquilo-processes",
		order = "a[ammonia]-b[solid-fuel-from-ammonia]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels
	},
})

