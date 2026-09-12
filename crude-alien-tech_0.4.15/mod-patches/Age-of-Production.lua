local utils = require("utils")

local function categoryMerge(recipe,newCategories)
	data.raw["recipe"][recipe].categories = utils.merge{data.raw["recipe"][recipe].categories,newCategories}
end

categoryMerge("cat-wood-to-nutrients",{"woodworking"})
categoryMerge("cat-wood-to-nooberry",{"woodworking"})
categoryMerge("cat-nooberry-to-mash",{"woodworking"})
categoryMerge("cat-nooberry-to-jelly",{"woodworking"})

--categoryMerge("cat-wood-decarbonization",{"woodworking"})
categoryMerge("cat-agricultural-tower-mk1",{"woodworking"})
categoryMerge("cat-synthetic-wood",{"petrochemistry"})

categoryMerge("cat-oxygenated-rocket-fuel",{"petrochemistry"})
categoryMerge("cat-oxygenated-rocket-fuel-from-jelly",{"petrochemistry"})
categoryMerge("cat-oxygenated-ammonia-rocket-fuel",{"petrochemistry"})
categoryMerge("cat-oxygenated-solid-fuel-from-light-oil",{"petrochemistry"})
categoryMerge("cat-oxygenated-solid-fuel-from-heavy-oil",{"petrochemistry"})
categoryMerge("cat-oxygenated-solid-fuel-from-petroleum-gas",{"petrochemistry"})
categoryMerge("cat-oxygenated-solid-fuel-from-ammonia",{"petrochemistry"})



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
		categories = {"agriculture"},
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