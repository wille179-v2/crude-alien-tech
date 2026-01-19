local utils = require("utils")

data.raw["recipe"]["cat-wood-to-nutrients"].additional_categories = {"woodworking","biochemistry"}
data.raw["recipe"]["cat-wood-to-nooberry"].additional_categories = {"woodworking"}
data.raw["recipe"]["cat-nooberry-to-mash"].additional_categories = {"woodworking"}
data.raw["recipe"]["cat-nooberry-to-jelly"].additional_categories = {"woodworking"}

data.raw["recipe"]["cat-wood-decarbonization"].additional_categories = {"woodworking"}
data.raw["recipe"]["cat-agricultural-tower-mk1"].additional_categories = {"woodworking"}
data.raw["recipe"]["cat-synthetic-wood"].additional_categories = {"biochemistry"}

data.raw["recipe"]["cat-oxygenated-rocket-fuel"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-rocket-fuel-from-jelly"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-ammonia-rocket-fuel"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-solid-fuel-from-light-oil"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-solid-fuel-from-heavy-oil"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-solid-fuel-from-petroleum-gas"].additional_categories = {"petrochemistry"}
data.raw["recipe"]["cat-oxygenated-solid-fuel-from-ammonia"].additional_categories = {"petrochemistry"}



--[[
Category Updates:

cat-wood-to-nooberry -> Lumber Mill or Biochemical
cat-nooberry-to-jelly -> Lumber Mill or Biochemical
cat-nooberry-to-mash -> Lumber Mill or Biochemical
cat-synthetic-wood -> Biochemical
cat-wood-decarbonization -> Lumber Mill or Biochemical

cat-agricultural-tower-mk1 -> Lumber Mill

All oxygenated fuels -> Petrochem
cat-oxygenated-rocket-fuel
cat-oxygenated-rocket-fuel-from-jelly
cat-oxygenated-ammonia-rocket-fuel
cat-oxygenated-solid-fuel-from-light-oil
cat-oxygenated-solid-fuel-from-heavy-oil
cat-oxygenated-solid-fuel-from-petroleum-gas
cat-oxygenated-solid-fuel-from-ammonia

]]

--[[
New Recipes:
Ashland tree in Greenhouse
	Sulfuric Acid + Stone + Ashland Tree Seeds = Carbonized Wood

]]

data:extend({
	{
		type = "recipe",
		name = "cat-ashland-tree-greenhouse",
		icons = {
			{ icon = "__space-age__/graphics/icons/ashland-lichen-tree.png"},
		},
		enabled = false,
		ingredients = {
			{type = "fluid", name = "sulfuric-acid", amount = 50},
			{type = "item", name = "stone", amount = 20},
			{type = "item", name = "cat-ashland-tree-seed", amount = 4},
		},
		results = {
			{type = "item", name = "cat-carbonized-wood", amount = 16},
			{type = "item", name = "carbon", amount = 8}
		},
		category = "agriculture",
		energy_required = 1200,
		allow_productivity = true,
		subgroup = "aop-advanced-agriculture",
		order = "c[carbonized-wood]",
		hidden_from_player_crafting = false,
		allow_decomposition = false,
		surface_conditions = {
			{property = "pressure", min = 4000, max = 4000}
		}
	}
})

utils.add_recipes("aop-greenhouse", {"cat-ashland-tree-greenhouse"})
utils.add_productivity("aop-agriculture-productivity",{"cat-ashland-tree-greenhouse"},0.1)