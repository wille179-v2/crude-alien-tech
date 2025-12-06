-- Electric Lumber Mill
local utils = require("utils")

local lumberMillName = "cat-electric-lumber-mill"

local millEntity = table.deepcopy(data.raw["assembling-machine"]["lumber-mill"])
local millItem = table.deepcopy(data.raw["item"]["lumber-mill"])
local millRecipe = table.deepcopy(data.raw["recipe"]["lumber-mill"])

millEntity.name = lumberMillName
millItem.name = lumberMillName
millRecipe.name = lumberMillName

millEntity.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = millEntity.energy_source.emissions_per_minute
}
millEntity.crafting_speed = 2.5
millEntity.minable.result = lumberMillName
millEntity.order = "z-2[lumber-mill]-e"
millEntity.icons = {
	{
		icon = millItem.icon
	},
	{
		icon = "__base__/graphics/icons/signal/signal-lightning.png",
		tint = {r=1,g=1,b=0.3,a=1},
		scale = 0.25, 
		shift = {8,8}
	}
}

millItem.place_result = lumberMillName
if settings.startup["use-chain-recipe"].value then
	millRecipe.ingredients = {
		{type = "item", name = "copper-plate", amount = 10},
		{type = "item", name = "lumber", amount = 20},
		{type = "item", name = "iron-gear-wheel", amount = 25},
		{type = "item", name = "electronic-circuit", amount = 10},
		{type = "item", name = "stone-brick", amount = 20},
		{type = "item", name = "lumber-mill", amount = 1},
	}
else
	millRecipe.ingredients = {
		{type = "item", name = "copper-plate", amount = 20},
		{type = "item", name = "lumber", amount = 50},
		{type = "item", name = "iron-gear-wheel", amount = 50},
		{type = "item", name = "electronic-circuit", amount = 20},
		{type = "item", name = "stone-brick", amount = 40},
		{type = "item", name = "assembling-machine-1", amount = 2},
	}
end
millItem.order = "2[lumber-mill]-e"
millItem.icons = {
	{
		icon = millItem.icon
	},
	{
		icon = "__base__/graphics/icons/signal/signal-lightning.png",
		tint = {r=1,g=1,b=0.3,a=1},
		scale = 0.25, 
		shift = {8,8}
	}
}

millRecipe.order = "2[lumber-mill]-e"
millRecipe.results = {
	{type = "item", name = lumberMillName, amount = 1}
}

data:extend{millEntity, millItem, millRecipe}

local crudeTint = {r=.8,g=.5,b=.5,a=1}

data.raw["item"]["lumber-mill"].icons = {
	{
		icon = data.raw["item"]["lumber-mill"].icon,
		tint = crudeTint
	}
}
local copperMillRecipe = data.raw["recipe"]["lumber-mill-copper"]
copperMillRecipe.icons[1].tint = crudeTint


--- Agricultural tower localization & chain recipe

local towerMk1Entity = data.raw["agricultural-tower"]["cat-agricultural-tower-mk1"]
local towerMk2Entity = data.raw["agricultural-tower"]["agricultural-tower"]
local towerMk1Item = data.raw["item"]["cat-agricultural-tower-mk1"]
local towerMk2Item = data.raw["item"]["agricultural-tower"]
local towerMk1Recipe = data.raw["recipe"]["cat-agricultural-tower-mk1"]
local towerMk2Recipe = data.raw["recipe"]["agricultural-tower"]

towerMk1Entity.localised_name = {"entity-name.alt-mk1-tower"}
towerMk1Item.localised_name = {"item-name.alt-mk1-tower"}
towerMk1Recipe.localised_name = {"recipe-name.alt-mk1-tower"}

towerMk2Entity.localised_name = {"entity-name.alt-mk2-tower"}
towerMk2Item.localised_name = {"item-name.alt-mk2-tower"}
towerMk2Recipe.localised_name = {"recipe-name.alt-mk2-tower"}

if settings.startup["use-chain-recipe"].value then
	towerMk1Recipe.ingredients = {
		{type = "item", name = "steel-plate", amount = 8},
		{type = "item", name = "landfill", amount = 1},
		{type = "item", name = "spoilage", amount = 1},
		{type = "item", name = "burner-agricultural-tower", amount = 1},
	}
end

-- New Recipes

data:extend({
	{ -- Peat
		type = "recipe",
		name = "cat-peat",
		enabled = false,
		icons = {
			{icon = "__lignumis-assets__/graphics/icons/peat.png"}
		},
		ingredients = {
			{type = "item",name = "wood", amount = 10},
			{type = "item",name = "stone", amount = 5},
			{type = "fluid",name = "water", amount = 20},
			{type = "fluid",name = "wood-pulp", amount = 10},

		},
		results = {
			{type = "item", name = "peat", amount = 15}
		},
		category = "organic-or-chemistry",
		energy_required = 16,
		allow_productivity = true,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false,
		subgroup = "lignumis-bioprocessing"
	},
	{ -- Gold Bacteria Cultivation
		type = "recipe",
		name = "cat-gold-bacteria-cultivation",
		enabled = false,
		--icons = {
		--	{icon = "__crude-alien-tech__/graphics/icon/mod_compatibility/gold-bacteria-cultivation.png"}
		--},
		icon = "__crude-alien-tech__/graphics/icon/mod_compatibility/gold-bacteria-cultivation.png",
		size = 64,
		ingredients = {
			{type = "item",name = "peat", amount = 1},
			{type = "item",name = "gold-bacteria", amount = 1},

		},
		results = {
			{type = "item", name = "gold-bacteria", amount = 4}
		},
		category = "organic",
		energy_required = 4,
		reset_freshness_on_craft = true,
		allow_productivity = true,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false,
		allow_decomposition = false,
		subgroup = "lignumis-bioprocessing",
		order = "b[agriculture]-e[gold-bacteria]"
	},
	{ -- Gold Bacteria
		type = "recipe",
		name = "cat-gold-bacteria",
		enabled = false,
		icons = {
			{icon = "__lignumis-assets__/graphics/icons/gold-bacteria.png"}
		},
		ingredients = {
			{type = "item",name = "peat", amount = 4},

		},
		results = {
			{type = "item", name = "gold-bacteria", amount = 1, probability = .1},
			{type = "item", name = "spoilage", amount = 2},

		},
		category = "organic",
		energy_required = 1,
		reset_freshness_on_craft = true,
		allow_productivity = true,
		hidden_from_player_crafting = false,
		hidden_in_factoriopedia = false,
		allow_decomposition = false,
		subgroup = "lignumis-bioprocessing",
		order = "b[agriculture]-e[gold-bacteria]"
	},
	{
		type = "recipe",
		name = "cat-uncatalyzed-molten-gold",
		icons = {
			{icon = "__lignumis-assets__/graphics/icons/molten-gold.png"}
		},
		enabled = false,
		ingredients = {
			{type = "item", name = "gold-ore", amount = 50}
		},
		results = {
			{type = "fluid", name = "molten-gold", amount = 450}
		},
		energy_required = 35,
		category = "metallurgy",
		allow_productivity = true,
		subgroup = "vulcanus-processes",
		order = "b[new-fluid]-0[lignumis]-a[molten-gold]-b",
		allow_decomposition = false
	},
	{ -- Rocket Fuel from Wood
		type = "recipe",
		name = "cat-oxygenated-rocket-fuel-from-wood-pulp-and-peat",
		icons = {
            { icon = "__base__/graphics/icons/rocket-fuel.png" },
            { icon = "__lignumis-assets__/graphics/icons/peat.png",      scale = 0.25, shift = { 8, 8 } },
            { icon = "__lignumis-assets__/graphics/icons/wood-pulp.png", scale = 0.25, shift = { 8, 8 } },
			{ icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png", scale = 0.25, shift = {-8,8}}
        },
		enabled = false,
		ingredients = {
			{type = "fluid", name = "wood-pulp", amount = 45*3},
			{type = "item", name = "peat", amount = 9*3},
			{type = "fluid", name = "cat-oxygen", amount = 30},
		},
		products = {
			{type = "item", name = "rocket-fuel", amount = 4}
		},
		category = "organic-or-chemistry",
		energy_required = 30,
		allow_productivity = true,
		subgroup = "lignumis-bioprocessing",
		order = "d[rocket-parts]-b[rocket-fuel]-b",
		hidden_from_player_crafting = true,
		hidden_in_factoriopedia = not settings.startup["oxygen-fuels"].value,
		hidden = not settings.startup["oxygen-fuels"].value,
		allow_decomposition = false
	},
})

utils.add_recipes("bacteria-cultivation",{"cat-gold-bacteria","cat-gold-bacteria-cultivation"})
utils.add_recipes("cat-uncatalyzed-melting",{"cat-uncatalyzed-molten-gold"})
utils.add_recipes("cat-earthly-roots",{"cat-peat"})
utils.add_recipes("cat-a-breath-of-cold-air",{"cat-oxygenated-rocket-fuel-from-wood-pulp-and-peat"})

table.insert(
	data.raw["technology"]["rocket-fuel-productivity"].effects,
	{type = "change-recipe-productivity", recipe = "cat-oxygenated-rocket-fuel-from-wood-pulp-and-peat", change = 0.1}
)



-- technology tree changes
data.raw["technology"]["tree-seeding"].hidden = false
utils.set_prerequisites("cat-earthly-roots",{"tree-seeding","landfill","electronics","steel-processing"})
utils.remove_recipes("cat-earthly-roots",{"wood-processing"})
utils.add_recipes("cat-earthly-roots", {lumberMillName})
utils.remove_packs("cat-earthly-roots",{"chemical-science-pack","logistic-science-pack"})
utils.remove_packs("cat-dreaming-of-greener-pastures",{"chemical-science-pack"})
utils.remove_packs("fish-breeding",{"chemical-science-pack"})

