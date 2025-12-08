local utils = require("utils")

utils.hide_asset("recipe","cat-electrolysis")

local isVestaComplex = settings.startup["ske_vesta_legacy_recipes"].value
local realisticGasses = settings.startup["ske_realistic_gases"].value

local vesta1 = "__skewer_planet_vesta_assets__/graphics/"
local vesta2 = "__skewer_planet_vesta_assets_2__/graphics/"

local oxyIcon = ""
local nitroIcon = ""
local hydroIcon = ""

if realisticGasses then
	oxyIcon = vesta2 .. "icons/molecule-oxygen.png"
	nitroIcon = vesta2 .. "icons/molecule-nitrogen.png"
	hydroIcon = vesta2 .. "icons/molecule-hydrogen.png"
else
	oxyIcon = vesta1 .. "icons/gas_oxygen.png"
	nitroIcon = vesta1 .. "icons/gas_nitrogen.png"
	hydroIcon = vesta1 .. "icons/gas_hydrogen.png"
end


-- Recipe icons to update:
	-- Gas Venting (oxygen, hydrogen, nitrogen) using no entry signal
	-- Oxygen fuels (rocekt oil, rocket jelly, rocket ammonia, arig compressed rocket)
	-- Oxygen Solids (light solid, heavy solid, petrol solid, ammonia solid)

	local smallOxy = { icon = oxyIcon, scale = 0.25, shift = {-8,8}}

	data.raw["recipe"]["cat-vent-oxygen"].icons = {
		{icon = oxyIcon},
		{icon = "__base__/graphics/icons/signal/signal-no-entry.png"}
	}
	data.raw["recipe"]["cat-vent-hydrogen"].icons = {
		{icon = hydroIcon},
		{icon = "__base__/graphics/icons/signal/signal-no-entry.png"}
	}
	data.raw["recipe"]["cat-vent-nitrogen"].icons = {
		{icon = nitroIcon},
		{icon = "__base__/graphics/icons/signal/signal-no-entry.png"}
	}
	data.raw["recipe"]["cat-oxygenated-rocket-fuel"].icons = {
		{ icon = "__base__/graphics/icons/rocket-fuel.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-rocket-fuel-from-jelly"].icons = {
		{ icon = "__space-age__/graphics/icons/rocket-fuel-from-jelly.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-ammonia-rocket-fuel"].icons = {
		{ icon = "__space-age__/graphics/icons/ammonia-rocket-fuel.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-light-oil"].icons = {
		{ icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-heavy-oil"].icons = {
		{ icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-petroleum-gas"].icons = {
		{ icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png"},
		smallOxy
	}
	data.raw["recipe"]["cat-oxygenated-solid-fuel-from-ammonia"].icons = {
		{ icon = "__space-age__/graphics/icons/solid-fuel-from-ammonia.png"},
		smallOxy
	}

	if mods["planetaris-arig"] then
		data.raw["recipe"]["cat-oxygenated-compression-rocket-fuel"].icons = {
			{ icon = "__planetaris-arig__/graphics/icons/compression-rocket-fuel.png"},
			smallOxy
		}
	end

local sand = "cat-sand"
local pureSand = "cat-pure-sand"

if mods["planetaris-arig"] then 
	sand = "planetaris-sand"
	pureSand = "planetaris-pure-sand"
end

if isVestaComplex then
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
			allow_decomposition = false,
			hidden = isVestaComplex,
			hidden_in_factoriopedia = isVestaComplex,
			hide_from_player_crafting = true
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
			allow_decomposition = false,
			hidden = isVestaSimple,
			hidden_in_factoriopedia = isVestaSimple,
			hide_from_player_crafting = true
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
			},
			hidden = isVestaSimple,
			hidden_in_factoriopedia = isVestaSimple,
			hide_from_player_crafting = true
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