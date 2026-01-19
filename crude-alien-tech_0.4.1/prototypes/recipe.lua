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

local frep = require("__fdsl__.lib.recipe")

-- Mk1 Buildings (Mk2 building recipes are in their specific planet lua files)
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
		hidden_in_factoriopedia = false,
		order = "a[items]-c[big-mining-drill]-a"
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

-- Gleba Recipes
data:extend({
	{
		type = "recipe",
		name = "cat-wood-to-nutrients",
		icons = {
			{icon = "__base__/graphics/icons/wood.png", shift = {-8,-8}, scale = .5},
			{icon = "__space-age__/graphics/icons/nutrients.png", shift = {8,8}, scale = .5}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "wood", amount = 1}
		},
		results = {
			{type = "item", name = "nutrients", amount = 3, percent_spoiled = 0.25}
		},
		category = "organic-or-assembling",
		energy_required = 2.5,
		allow_productivity = true,
		allow_decomposition = false
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
		allow_productivity = true,
		allow_decomposition = false
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
		allow_productivity = true,
		allow_decomposition = false
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
		allow_productivity = true,
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-synthetic-pentapod-egg",
		enabled = false,
		icons = {
			{icon = "__space-age__/graphics/icons/pentapod-egg-3.png"},
			{icon = "__base__/graphics/icons/uranium-235.png", scale = .25, shift = {8,8}}
		},
		ingredients = {
			{type = "item", name = "yumako-mash", amount = 5},
			{type = "item", name = "iron-bacteria", amount = 6},
			{type = "item", name = "bioflux", amount = 1},
			{type = "item", name = "uranium-235", amount = 1},
			{type = "fluid", name = "water", amount = 40}

		},
		results = {
			{type = "item", name = "pentapod-egg", amount = 1, probability = .1},
			{type = "item", name = "uranium-235", amount = 1, probability = .25, ignored_by_productivity = 1},
			{type = "item", name = "spoilage", amount = 10, probability = .9, ignored_by_productivity = 10}
		},
		main_product = "pentapod-egg",
		category = "organic",
		energy_required = 80,
		allow_productivity = false,
		allow_decomposition = false,
		reset_freshness_on_craft = true,
		--hidden = not settings.startup["unrestricted-buildings"].value,
		--hidden_in_factoriopedia = not settings.startup["unrestricted-buildings"].value
	}
})

data.raw["recipe"]["iron-bacteria"].surface_conditions = nil
data.raw["recipe"]["copper-bacteria"].surface_conditions = nil
data.raw["recipe"]["iron-bacteria-cultivation"].surface_conditions = nil
data.raw["recipe"]["copper-bacteria-cultivation"].surface_conditions = nil



-- Fulgora recipes
data:extend({
	{
		type = "recipe",
		name = "cat-holmium-ore-sifting",
		icon = "__crude-alien-tech__/graphics/icon/holmium-sifting.png",
		icon_size = 64,
		enabled = false,
		ingredients = {}, --set in data-updates.lua for Arig compatibility
		results = {},
		main_product = "holmium-ore",
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fulgora-processes",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-synthetic-wood",
		icons = {
			{icon = "__base__/graphics/icons/wood.png"},
			{icon = "__space-age__/graphics/icons/fluid/holmium-solution.png", shift={-8,-8}, scale=0.3}
		},
		enabled = false,
		ingredients = {
		  {type="item", name="plastic-bar", amount=2},
		  {type="fluid", name="holmium-solution", amount=10}
		},	
		results = {{type="item", name="wood", amount=3}},
		category = "organic-or-chemistry",
		energy_required = 2,
		auto_recycle = false,
		allow_productivity = true,
		subgroup = "fulgora-processes",
		allow_decomposition = false,
		order = "d[wood]-a[synthetic-wood]"
	},
})

if settings.startup["scrap-power-poles"].value then
	frep.add_result("scrap-recycling",{type = "item", name = "small-electric-pole", amount = 1, probability = .04, show_details_in_recipe_tooltip = false})
end

-- Vulcanus recipes
data:extend({
	{
		type = "recipe",
		name = "cat-lava",
		enabled = false,
		ingredients = {},--set in data-updates.lua for Arig compatibility
		results = {
			{type = "fluid", name = "lava", amount = 500}
		},
		category = "metallurgy",
		energy_required = 20,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		allow_decomposition = false
	},
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
		allow_decomposition = false
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
		allow_decomposition = false
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
			{type = "item", name = "stone", amount = 5}
		},
		main_product = "molten-copper",
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[copper]",
		allow_decomposition = false
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
			{type = "item", name = "stone", amount = 5}
		},
		main_product = "molten-iron",
		category = "metallurgy",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[iron]",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-tungsten-ore",
		icon = "__space-age__/graphics/icons/tungsten-ore.png",
		icon_size = 64,
		enabled = false,
		ingredients = {},--set in data-updates.lua for Arig compatibility
		results = {
			{type = "item", name = "tungsten-ore", amount_min = 3, amount_max = 4}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 5,
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "d[metallurgy]-a[iron]",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-uncatalyzed-molten-iron",
		icons = {
			{icon = "__space-age__/graphics/icons/fluid/molten-iron.png"},
			{icon = "__base__/graphics/icons/iron-ore.png", scale = .25, shift = {8,-8}}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "iron-ore", amount = 50}
		},
		results = {
			{type = "fluid", name = "molten-iron", amount = 450}
		},
		energy_required = 35,
		category = "metallurgy",
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "a[melting]-b[molten-iron]-b",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-uncatalyzed-molten-copper",
		icons = {
			{icon = "__space-age__/graphics/icons/fluid/molten-copper.png"},
			{icon = "__base__/graphics/icons/copper-ore.png", scale = .25, shift = {8,-8}}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "copper-ore", amount = 50}
		},
		results = {
			{type = "fluid", name = "molten-copper", amount = 450}
		},
		energy_required = 35,
		category = "metallurgy",
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "a[melting]-c[molten-copper]-b",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "cat-wood-decarbonization",
		icons = {
			{icon = "__base__/graphics/icons/wood.png", tint = {r = .3, b = .3, g = .3, a = 1}},
		},
		--icon_size = 64,
		--icon_tint = {r = .3, b = .3, g = .3, a = 1},
		enabled = false,
		ingredients = {
			{type = "item", name = "cat-carbonized-wood", amount = 1},
			{type = "fluid", name = "sulfuric-acid", amount = 5}

		},
		results = {
			{type = "item", name = "wood", amount = 1},
			{type = "item", name = "cat-ashland-tree-seed", amount = 1, probability = .25},
		},
		energy_required = 1,
		category = "organic-or-chemistry",
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "c[wood]-a[decarbonization]",
		allow_decomposition = false,
		surface_conditions = {
			{
				property = "pressure",
				min = 4000
			}
		}
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
		ingredients = {}, --set in planetaris-arig.lua for Arig compatibility
		results = {}, --set in planetaris-arig.lua for Arig compatibility
		category = "cryogenics",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		allow_decomposition = false
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
			{type = "fluid", name = "hydrogen", amount = 66},
			{type = "fluid", name = "oxygen", amount = 33},
		},
		category = "chemistry-or-cryogenics",
		energy_required = 2,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		allow_decomposition = false
	},
	{ -- air separation
		type = "recipe",
		name = "cat-air-separation",
		icon = "__crude-alien-tech__/graphics/icon/air-bobs.png",
		icon_size = 32,
		enabled = false,
		ingredients = {},
		results = {
			{type = "fluid", name = "nitrogen", amount = 78},
			{type = "fluid", name = "oxygen", amount = 21},
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		allow_decomposition = false
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
		subgroup = "fluid-recipes",
		allow_decomposition = false
	},
	{ -- ammonia
		type = "recipe",
		name = "cat-ammonia",
		icon = "__space-age__/graphics/icons/fluid/ammonia.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "nitrogen", amount = 20},
			{type = "fluid", name = "hydrogen", amount = 60},
		},
		results = {
			{type = "fluid", name = "ammonia", amount = 20},
		},
		category = "cryogenics",
		energy_required = 2,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		allow_decomposition = false
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
		subgroup = "fluid-recipes",
		allow_decomposition = false
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
		results = {}, --set in data-updates.lua under Arig compatibility
		category = "metallurgy-or-assembling",
		energy_required = 20,
		allow_productivity = true,
		alternative_unlock_methods = {"cat-somethings-rumbling"},
		subgroup = "fluid-recipes",
		allow_decomposition = false
	},
	{ -- pure sand
		type = "recipe",
		name = "cat-pure-sand",
		icon = "__crude-alien-tech__/graphics/icon/pure-sand.png",
		icon_size = 64,
		enabled = false,
		ingredients = {}, --set in data-updates.lua under Arig compatibility
		results = {}, --set in data-updates.lua under Arig compatibility
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		allow_decomposition = false
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
		subgroup = "fluid-recipes",
		allow_decomposition = false
	},
	{ -- sand to brick
		type = "recipe",
		name = "cat-sand-brick",
		icon = "__crude-alien-tech__/graphics/icon/sand-stone-brick.png",
		icon_size = 64,
		enabled = false,
		ingredients = {}, --set in data-updates.lua under Arig compatibility
		results = {
			{type = "item", name = "stone-brick", amount = 1}
		},
		category = "metallurgy",
		order = "a[stone-brick]-b",
		energy_required = 3,
		allow_productivity = true,
		subgroup = "terrain",
		hidden_from_player_crafting = true,
		allow_decomposition = false
	},
	{ -- pure sand to brick
		type = "recipe",
		name = "cat-pure-sand-brick",
		icon = "__crude-alien-tech__/graphics/icon/pure-sand-stone-brick.png",
		icon_size = 64,
		enabled = false,
		ingredients = {}, --set in data-updates.lua under Arig compatibility},
		results = {
			{type = "item", name = "stone-brick", amount = 1}
		},
		category = "metallurgy",
		order = "a[stone-brick]-c",
		energy_required = 2,
		allow_productivity = true,
		subgroup = "terrain",
		hidden_from_player_crafting = true,
		allow_decomposition = false
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
			{type = "fluid", name = "oxygen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[o]",
		allow_decomposition = false
	},
	{ -- vent hydrogen
		type = "recipe",
		name = "cat-vent-hydrogen",
		icon = "__crude-alien-tech__/graphics/icon/no-hydrogen.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "hydrogen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[h]",
		allow_decomposition = false
	},
	{ -- vent nitrogen
		type = "recipe",
		name = "cat-vent-nitrogen",
		icon = "__crude-alien-tech__/graphics/icon/no-nitrogen.png",
		icon_size = 64,
		enabled = false,
		ingredients = {
			{type = "fluid", name = "nitrogen", amount = 30}
		},
		results = {
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = false,
		subgroup = "fluid-recipes",
		order = "z[cat]-v[n]",
		allow_decomposition = false
	},
})

-- Oxygen Fuels
local hideFuels = not settings.startup["oxygen-fuels"].value

data:extend({
	{ -- Rocket Fuel from Oil Products
		type = "recipe",
		name = "cat-oxygenated-rocket-fuel",
		--icon = "__base__/graphics/icons/rocket-fuel.png",
		--icon_size = 64,
		icons = {
			{ icon = "__base__/graphics/icons/rocket-fuel.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "light-oil", amount = 15},
			{type = "item", name = "solid-fuel", amount = 15},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "organic-or-chemistry",
		energy_required = 15,
		allow_productivity = true,
		subgroup = "intermediate-product",
		order = "d[rocket-parts]-b[rocket-fuel]-a",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Rocket Fuel from Jelly
		type = "recipe",
		name = "cat-oxygenated-rocket-fuel-from-jelly",
		--icon = "__space-age__/graphics/icons/rocket-fuel-from-jelly.png",
		--icon_size = 64,
		icons = {
			{ icon = "__space-age__/graphics/icons/rocket-fuel-from-jelly.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "bioflux", amount = 3},
			{type = "item", name = "jelly", amount = 45},
			{type = "fluid", name = "water", amount = 45},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "organic",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "agriculture-products",
		order = "d[rocket-parts]-b[rocket-fuel]-b",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Rocket Fuel from Ammonia
		type = "recipe",
		name = "cat-oxygenated-ammonia-rocket-fuel",
		--icon = "__space-age__/graphics/icons/ammonia-rocket-fuel.png",
		--icon_size = 64,
		icons = {
			{ icon = "__space-age__/graphics/icons/ammonia-rocket-fuel.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "solid-fuel", amount = 15},
			{type = "fluid", name = "water", amount = 75},
			{type = "fluid", name = "ammonia", amount = 750},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "rocket-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 10,
		allow_productivity = true,
		subgroup = "aquilo-processes",
		order = "d[rocket-parts]-b[rocket-fuel]-c",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Solid Fuel from Light Oil
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-light-oil",
		--icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
		--icon_size = 64,
		icons = {
			{ icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "light-oil", amount = 15},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-d[solid-fuel-from-light-oil]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Solid Fuel from Heavy Oil
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-heavy-oil",
		--icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
		--icon_size = 64,
		icons = {
			{ icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "heavy-oil", amount = 30},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Solid Fuel from Petrolium Gas
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-petroleum-gas",
		--icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
		--icon_size = 64,
		icons = {
			{ icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "petroleum-gas", amount = 30},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "solid-fuel", amount = 2}
		},
		category = "chemistry-or-cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "fluid-recipes",
		order = "b[fluid-chemistry]-c[solid-fuel-from-petroleum-gas]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
	{ -- Solid Fuel from Ammonia
		type = "recipe",
		name = "cat-oxygenated-solid-fuel-from-ammonia",
		--icon = "__space-age__/graphics/icons/solid-fuel-from-ammonia.png",
		--icon_size = 64,
		icons = {
			{ icon = "__space-age__/graphics/icons/solid-fuel-from-ammonia.png"},
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "ammonia", amount = 45},
			{type = "fluid", name = "crude-oil", amount = 18},
			{type = "fluid", name = "oxygen", amount = 30},
		},
		results = {
			{type = "item", name = "solid-fuel", amount = 4}
		},
		category = "cryogenics",
		energy_required = 1,
		allow_productivity = true,
		subgroup = "aquilo-processes",
		order = "a[ammonia]-b[solid-fuel-from-ammonia]-o",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = hideFuels,
		hidden = hideFuels,
		allow_decomposition = false
	},
})

