local utils = require("utils")

utils.hide_asset("recipe","cat-electrolysis")

if settings.startup["ske_vesta_legacy_recipes"].value then
	local sand = "cat-sand"
	local pureSand = "cat-pure-sand"

	if mods["planetaris-arig"] then 
		sand = "planetaris-sand"
		pureSand = "planetaris-pure-sand"
	end
	data:extend({
		{
			type = "recipe",
			name = "cat-to-vesta-sand",
			icons = {
				{icon = "__crude-alien-tech__/graphics/icon/sand.png", shift={0,8}, scale=0.5},
				{icon = "__skewer_planet_vesta_assets__/graphics/icons/sand_1.png", shift={0,-8}, scale=0.5}
			},
			enabled = false,
			ingredients = {
				{type = "fluid", name = sand, amount = 20}
			},
			results = {
				{type = "item", name = "sand", amount = 4}
			},
			category = "crafting-with-fluid",
			energy_required = .0125,
			allow_productivity = false,
			allow_decomposition = false
		},
		{
			type = "recipe",
			name = "vesta-to-cat-sand",
			icons = {
				{icon = "__skewer_planet_vesta_assets__/graphics/icons/sand_1.png", shift={0,8}, scale=0.5},
				{icon = "__crude-alien-tech__/graphics/icon/sand.png", shift={0,-8}, scale=0.5}
			},
			enabled = false,
			ingredients = {
				{type = "item", name = "sand", amount = 4}

			},
			results = {
				{type = "fluid", name = sand, amount = 20}
			},
			category = "crafting-with-fluid",
			energy_required = .0125,
			allow_productivity = false,
			allow_decomposition = false
		},	
		{
			type = "recipe",
			name = "vesta-lithium-solidification",
			icon = "__space-age__/graphics/icons/lithium.png",
			icon_size = 64,
			enabled = false,
			ingredients = {
				{type = "item", name = "holmium-plate", amount = 1},
				{type = "fluid", name = "ske_lithium", amount = 50},
				{type = "fluid", name = "ammonia", amount = 50}
			},
			results = {
				{type = "item", name = "lithium", amount = 5}
			},
			category = "chemistry-or-cryogenics",
			energy_required = 20,
			allow_productivity = true,
			allow_decomposition = false,
			surface_conditions = {
				{
					property = "gasous_atmosphere",
					min = 99
				}
			}
		},
	})
	utils.add_recipes("s1_brine",{"vesta-lithium-solidification"})
	utils.add_recipes("s1_sandceramicmesh",{"cat-to-vesta-sand","vesta-to-cat-sand"})
end

data.raw["recipe"]["cat-air-separation"].surface_conditions = {
	{
		property = "gasous_atmosphere",
		min = 1,
		max = 79
	}
}

data.raw["surface-property"]["gasous_atmosphere"].default_value = 78

data.raw["surface"]["space-platform"].surface_properties.gasous_atmosphere = 0