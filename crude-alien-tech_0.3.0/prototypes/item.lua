local mk1Tint = {r=.7,g=.4,b=.4,a=1}

-- get deep copies
local foundryMk1 = table.deepcopy(data.raw["item"]["foundry"])
local bigMiningDrillMk1 = table.deepcopy(data.raw["item"]["big-mining-drill"])
local recyclerMk1 = table.deepcopy(data.raw["item"]["recycler"])
local electromagneticPlantMk1 = table.deepcopy(data.raw["item"]["electromagnetic-plant"])
local agriculturalTowerMk1 = table.deepcopy(data.raw["item"]["agricultural-tower"])
local biochamberMk1 = table.deepcopy(data.raw["item"]["biochamber"])
local cryogenicPlantMk1 = table.deepcopy(data.raw["item"]["cryogenic-plant"])

foundryMk1.name = "cat-foundry-mk1"
bigMiningDrillMk1.name = "cat-big-mining-drill-mk1"
recyclerMk1.name = "cat-recycler-mk1"
electromagneticPlantMk1.name = "cat-electromagnetic-plant-mk1"
agriculturalTowerMk1.name = "cat-agricultural-tower-mk1"
biochamberMk1.name = "cat-biochamber-mk1"
cryogenicPlantMk1.name = "cat-cryogenic-plant-mk1"

foundryMk1.place_result = "cat-foundry-mk1"
bigMiningDrillMk1.place_result = "cat-big-mining-drill-mk1"
recyclerMk1.place_result = "cat-recycler-mk1"
electromagneticPlantMk1.place_result = "cat-electromagnetic-plant-mk1"
agriculturalTowerMk1.place_result = "cat-agricultural-tower-mk1"
biochamberMk1.place_result = "cat-biochamber-mk1"
cryogenicPlantMk1.place_result = "cat-cryogenic-plant-mk1"

foundryMk1.localised_name = {"entity-name." .. foundryMk1.name}
foundryMk1.localised_description = {"item-description." .. foundryMk1.name}

bigMiningDrillMk1.localised_name = {"entity-name." .. bigMiningDrillMk1.name}
bigMiningDrillMk1.localised_description = {"item-description." .. bigMiningDrillMk1.name}

recyclerMk1.localised_name = {"entity-name." .. recyclerMk1.name}
recyclerMk1.localised_description = {"item-description." .. recyclerMk1.name}

electromagneticPlantMk1.localised_name = {"entity-name." .. electromagneticPlantMk1.name}
electromagneticPlantMk1.localised_description = {"item-description." .. electromagneticPlantMk1.name}

agriculturalTowerMk1.localised_name = {"entity-name." .. agriculturalTowerMk1.name}
agriculturalTowerMk1.localised_description = {"item-description." .. agriculturalTowerMk1.name}

biochamberMk1.localised_name = {"entity-name." .. biochamberMk1.name}
biochamberMk1.localised_description = {"item-description." .. biochamberMk1.name}

cryogenicPlantMk1.localised_name = {"entity-name." .. cryogenicPlantMk1.name}
cryogenicPlantMk1.localised_description = {"item-description." .. cryogenicPlantMk1.name}


foundryMk1.icons = {
	{
		icon = foundryMk1.icon,
		icon_size = foundryMk1.icon_size,
		tint = mk1Tint
	}
}

bigMiningDrillMk1.icons = {
	{
		icon = bigMiningDrillMk1.icon,
		icon_size = bigMiningDrillMk1.icon_size,
		tint = mk1Tint
	}
}
recyclerMk1.icons = {
	{
		icon = recyclerMk1.icon,
		icon_size = recyclerMk1.icon_size,
		tint = mk1Tint
	}
}
electromagneticPlantMk1.icons = {
	{
		icon = electromagneticPlantMk1.icon,
		icon_size = electromagneticPlantMk1.icon_size,
		tint = mk1Tint
	}
}
agriculturalTowerMk1.icons = {
	{
		icon = agriculturalTowerMk1.icon,
		icon_size = agriculturalTowerMk1.icon_size,
		tint = mk1Tint
	}
}
biochamberMk1.icons = {
	{
		icon = biochamberMk1.icon,
		icon_size = biochamberMk1.icon_size,
		tint = mk1Tint
	}
}
cryogenicPlantMk1.icons = {
	{
		icon = cryogenicPlantMk1.icon,
		icon_size = cryogenicPlantMk1.icon_size,
		tint = mk1Tint
	}
}

data:extend{
	foundryMk1,
	bigMiningDrillMk1,
	recyclerMk1,
	electromagneticPlantMk1,
	agriculturalTowerMk1,
	biochamberMk1,
	cryogenicPlantMk1
}

-- Gleba Items
data:extend({
	{
		type = "capsule",
		name = "cat-nooberry",
		icons = {
			{
				icon = "__crude-alien-tech__/graphics/icon/nooberry.png",
				icon_size = 64
			}
		},
		stack_size = 50,
		spoil_result = "spoilage",
		spoil_ticks = 216000,
		fuel_value = "1.8MJ",
		fuel_category = "chemical",
		capsule_action = data.raw["capsule"]["yumako"].capsule_action,
		subgroup = "nauvis-agriculture",
		order = "a[seeds]-b[fruit]"

	},
})

-- Fulgora Items

-- Vulcanus Items

local impureMoltenIron = table.deepcopy(data.raw["fluid"]["molten-iron"])
local impureMoltenCopper = table.deepcopy(data.raw["fluid"]["molten-copper"])

impureMoltenIron.name = "cat-impure-molten-iron"
impureMoltenCopper.name = "cat-impure-molten-copper"
impureMoltenIron.subgroup = "cat-fluids"
impureMoltenCopper.subgroup = "cat-fluids"

impureMoltenIron.icons = {
	{
		icon = impureMoltenIron.icon,
		icon_size = impureMoltenIron.icon_size,
		tint = {r=.7,g=.6,b=.6,a=1}
	}
}
impureMoltenCopper.icons = {
	{
		icon = impureMoltenCopper.icon,
		icon_size = impureMoltenCopper.icon_size,
		tint = {r=.7,g=.6,b=.6,a=1}
	}
}

local vulcanusTreeSeed = table.deepcopy(data.raw["item"]["tree-seed"])
vulcanusTreeSeed.icons = {
	{
		icon = vulcanusTreeSeed.icon,
		icon_size = vulcanusTreeSeed.icon_size,
		tint = {r = .3, b = .3, g = .3, a = 1}
	}
}
vulcanusTreeSeed.plant_result = "cat-planted-ashland-lichen-tree"
vulcanusTreeSeed.place_result = "cat-planted-ashland-lichen-tree"
vulcanusTreeSeed.name = "cat-ashland-tree-seed"
vulcanusTreeSeed.localised_name = {"item-name.cat-ashland-tree-seed"}

local vulcanusCarbonizedWood = table.deepcopy(data.raw["item"]["wood"])
vulcanusCarbonizedWood.icons = {
	{
		icon = vulcanusCarbonizedWood.icon,
		icon_size = vulcanusCarbonizedWood.icon_size,
		tint = {r = .3, b = .3, g = .3, a = 1}
	}
}
vulcanusCarbonizedWood.name = "cat-carbonized-wood"
vulcanusCarbonizedWood.default_import_location = "vulcanus"

data:extend{impureMoltenIron,impureMoltenCopper,vulcanusTreeSeed,vulcanusCarbonizedWood}


-- Aquilo Items

data:extend({
	{
		type = "fluid",
		name = "cat-hydrofluoric-acid",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/hydrogen-fluoride-bobs.png",
		icon_size = 64,
		order = "c-c[aquilo]-g[h]",
		default_temperature = 0,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = {r = .11, g = .82, b = .11},
		flow_color = {r = .12, g = .87, b = .12},
		auto_barrel = false
	},
	{
		type = "fluid",
		name = "cat-oxygen",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/oxygen-bobs.png",
		icon_size = 64,
		order = "c-c[aquilo]-f[o]",
		default_temperature = 0,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = {r = .81, g = 0, b = 0},
		flow_color = {r = .86, g = 0, b = 0},
	},
	{
		type = "fluid",
		name = "cat-hydrogen",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/hydrogen-bobs.png",
		icon_size = 64,
		order = "c-c[aquilo]-f[h]",
		default_temperature = 0,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = {r = .85, g = .85, b = .85},
		flow_color = {r = .9, g = .9, b = .9},
	},
	{
		type = "fluid",
		name = "cat-nitrogen",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/nitrogen-bobs.png",
		order = "c-c[aquilo]-f[n]",
		default_temperature = 0,
		max_temperature = 100,
		gas_temperature = 0,
		base_color = {r = .14, g = .14, b = .67},
		flow_color = {r = .17, g = .17, b = .73},
	},
})

-- Generic Items

data:extend({
	{
		type = "item-subgroup",
		name = "cat-fluids",
		group = "fluids",
		order = "cat"
	}
})


data:extend({
	{
		type = "fluid",
		name = "cat-sand",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/sand.png",
		order = "b-b[vulcanus]-d",
		default_temperature = 20,
		max_temperature = 100,
		heat_capacity = "1kJ",
		base_color = {r = 180 / 255, g = 160 / 255, b = 120 / 255},
		flow_color = {r = 200 / 255, g = 180 / 255, b = 140 / 255},
	},
	{
		type = "fluid",
		name = "cat-pure-sand",
		subgroup = "cat-fluids",
		icon = "__crude-alien-tech__/graphics/icon/pure-sand.png",
		order = "b-b[vulcanus]-e",
		default_temperature = 20,
		max_temperature = 100,
		heat_capacity = "1kJ",
		base_color = {r = 180 / 255, g = 160 / 255, b = 120 / 255},
		flow_color = {r = 200 / 255, g = 180 / 255, b = 140 / 255},
	},
})

