local utils = require("utils")

local arigStart = false

if mods["any-planet-start"] then 
	if settings.startup["aps-planet"].value == "arig" then
		arigStart = true
	end
end

--planetaris-sand / planetaris-pure-sand
local arigSand = "planetaris-sand"
local arigPure = "planetaris-pure-sand"

local sandToUse = "cat-sand"
local pureSandToUse = "cat-pure-sand"

if mods["planetaris-arig"] then 
	sandToUse = arigSand
	pureSandToUse = arigPure
end

--set crafting recipes for sand-related recipes
data.raw["recipe"]["cat-sand"].results = {
	{type = "fluid", name = sandToUse, amount = 500}
}

data.raw["recipe"]["cat-pure-sand"].ingredients = {
	{type = "fluid", name = sandToUse, amount = 50}
}
data.raw["recipe"]["cat-pure-sand"].results = {
	{type = "fluid", name = pureSandToUse, amount_min = 1, amount_max = 5},
	{type = "item", name = "iron-ore", amount_min = 1, amount_max = 2, probability = 0.1},
	{type = "item", name = "copper-ore", amount_min = 1, amount_max = 2, probability = 0.1}
}

local holmiumOreSifting = data.raw["recipe"]["cat-holmium-ore-sifting"]
holmiumOreSifting.ingredients = {
	{type = "fluid", name = sandToUse, amount = 100},
	{type = "fluid", name = "sulfuric-acid", amount = 10}
}
holmiumOreSifting.results = {
	{type = "fluid", name = sandToUse, amount = 70, ignored_by_productivity = 70},
	{type = "item", name = "holmium-ore", amount = 1, probability = 0.25}
}

data.raw["recipe"]["cat-lava"].ingredients = {
	{type = "fluid", name = sandToUse, amount = 500},
	{type = "item", name = "iron-ore", amount = 1},
	{type = "item", name = "copper-ore", amount = 1}
}
data.raw["recipe"]["cat-tungsten-ore"].ingredients = {
	{type = "fluid", name = pureSandToUse, amount = 20},
	{type = "fluid", name = "sulfuric-acid", amount = 5},
}


local hydrofluoricAcid = data.raw["recipe"]["cat-hydrofluoric-acid"]
hydrofluoricAcid.ngredients = {
	{type = "fluid", name = sandToUse, amount = 50},
	{type = "fluid", name = "sulfuric-acid", amount = 50},
	{type = "fluid", name = "water", amount = 100},
}
hydrofluoricAcid.results = {
	{type = "fluid", name = "cat-hydrofluoric-acid", amount = 10},
	{type = "fluid", name = pureSandToUse, amount = 10},
}

--cat-sand-brick
data.raw["recipe"]["cat-sand-brick"].ingredients = {
	{type = "fluid", name = sandToUse, amount = 20}
}
--cat-pure-sand-brick
data.raw["recipe"]["cat-pure-sand-brick"].ingredients = {
	{type = "fluid", name = pureSandToUse, amount = 15}
}

-- Make other arig-related changes
if mods["planetaris-arig"] then
	-- Unlock Arig earlier and decouple from vulcanus
	local planetDiscoveryArig = data.raw["technology"]["planet-discovery-arig"]
	planetDiscoveryArig.unit = {
		count = 1000,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
			{"chemical-science-pack",1},
			{"space-science-pack",1},
		},
		time = 30
	}
	planetDiscoveryArig.prerequisites = {"space-platform-thruster","cat-rock-and-stone","cat-wolframs-might"}


	table.insert(data.raw["technology"]["planetaris-silica-processing"].prerequisites, "planetaris-advanced-sand-sifting")

	table.remove(data.raw["technology"]["planetaris-advanced-solar-panel"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-supported-solar-panel"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-big-chest"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-big-chest"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-raw-quartz-productivity"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-arig-roboport"].unit.ingredients,6)
	table.remove(data.raw["technology"]["planetaris-heavy-glass-productivity"].unit.ingredients,6)

	
	--hide my version of cat-sand
	data.raw["fluid"]["cat-sand"].hidden = true
	data.raw["fluid"]["cat-sand"].hidden_in_factoriopedia = true
	data.raw["fluid"]["cat-sand"].hidden_from_player_crafting = true

	--hide my version of cat-pure-sand
	data.raw["fluid"]["cat-pure-sand"].hidden = true
	data.raw["fluid"]["cat-pure-sand"].hidden_in_factoriopedia = true
	data.raw["fluid"]["cat-pure-sand"].hidden_from_player_crafting = true
	
	-- add my pure sand to Arig's Sifter
	data.raw["recipe"]["cat-pure-sand"].additional_categories = {"sifting"}

	--sifting
	holmiumOreSifting.additional_categories = {"sifting"}
	data.raw["recipe"]["cat-tungsten-ore"].additional_categories = {"sifting"}


	-- add oxygenated solid fuels to compressing category
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-light-oil"].additional_categories = {"compressing"}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-heavy-oil"].additional_categories = {"compressing"}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-petroleum-gas"].additional_categories = {"compressing"}
	

	-- add Oxygenated Compressed Rocket Fuel variant
	local hideFuels = not settings.startup["oxygen-fuels"].value
	data:extend({
		{ -- Oxygenated Compressed Rocket Fuel
			type = "recipe",
			name = "cat-oxygenated-compression-rocket-fuel",
			icon = "__planetaris-arig__/graphics/icons/compression-rocket-fuel.png",
			icon_size = 64,
			enabled = false,
			ingredients = {
				{type = "item", name = "coal", amount = 3},
				{type = "item", name = "solid-fuel", amount = 6},
				{type = "item", name = "sulfur", amount = 3},
				{type = "fluid", name = "cat-oxygen", amount = 30},
			},
			products = {
				{type = "item", name = "rocket-fuel", amount = 4}
			},
			category = "compressing",
			energy_required = 4,
			allow_productivity = true,
			subgroup = "arig-processes",
			order = "d[rocket-parts]-b[rocket-fuel]-a",
			hidden_from_player_crafting = true,
			hidden_in_factoriopedia = hideFuels,
			hidden = hideFuels,
			allow_decomposition = false
		},
	})

	if not hideFuels then
		table.insert(data.raw["technology"]["planetaris-compression"].effects,5,{type = "unlock-recipe", recipe = "cat-oxygenated-compression-rocket-fuel"})
	end
end

-- Further changes for Any Planet Start: Arig
if arigStart then
	utils.add_prerequisites("cat-earthly-roots",{"planetaris-cactus-wood","planetaris-water-harvesting"})
end