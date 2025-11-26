--[[
TODO: 
Entities to create:
	✔️- Mk1 Foundry
	✔️- Mk1 Big Mining Drill
	✔️- Mk1 Recycler
	✔️- Mk1 Electromagnetic Plant
	✔️- Mk1 Agricultural Tower
	✔️- Mk1 Biochamber
	✔️- Mk1 Cryogenic Plant

Update Art for Mk1 Entities:
	- Mk1 Foundry
	- Mk1 Big Mining Drill
	- Mk1 Recycler
	- Mk1 Electromagnetic Plant
	- Mk1 Agricultural Tower
	- Mk1 Biochamber
	- Mk1 Cryogenic Plant

Entities to update:
	✔️- Mk2 Foundry
	✔️- Mk2 Big Mining Drill
	✔️- Mk2 Recycler
	✔️- Mk2 Electromagnetic Plant
	✔️- Mk2 Agricultural Tower
	✔️- Mk2 Biochamber
	✔️- Mk2 Cryogenic Plant
]]

local mk1Tint = {r=.7,g=.4,b=.4,a=.8}

local foundryMk1 = table.deepcopy(data.raw["assembling-machine"]["foundry"])
local bigMiningDrillMk1 = table.deepcopy(data.raw["mining-drill"]["big-mining-drill"])
local recyclerMk1 = table.deepcopy(data.raw["furnace"]["recycler"])
local electromagneticPlantMk1 = table.deepcopy(data.raw["assembling-machine"]["electromagnetic-plant"])
local agriculturalTowerMk1 = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
local biochamberMk1 = table.deepcopy(data.raw["assembling-machine"]["biochamber"])
local cryogenicPlantMk1 = table.deepcopy(data.raw["assembling-machine"]["cryogenic-plant"])

foundryMk1.name = "cat-foundry-mk1"
bigMiningDrillMk1.name = "cat-big-mining-drill-mk1"
recyclerMk1.name = "cat-recycler-mk1"
electromagneticPlantMk1.name = "cat-electromagnetic-plant-mk1"
agriculturalTowerMk1.name = "cat-agricultural-tower-mk1"
biochamberMk1.name = "cat-biochamber-mk1"
cryogenicPlantMk1.name = "cat-cryogenic-plant-mk1"

foundryMk1.icons = {
	{
		icon = foundryMk1.icon,
		tint = mk1Tint
	}
}
bigMiningDrillMk1.icons = {
	{
		icon = bigMiningDrillMk1.icon,
		tint = mk1Tint
	}
}
recyclerMk1.icons = {
	{
		icon = recyclerMk1.icon,
		tint = mk1Tint
	}
}
electromagneticPlantMk1.icons = {
	{
		icon = electromagneticPlantMk1.icon,
		tint = mk1Tint
	}
}
agriculturalTowerMk1.icons = {
	{
		icon = agriculturalTowerMk1.icon,
		tint = mk1Tint
	}
}
biochamberMk1.icons = {
	{
		icon = biochamberMk1.icon,
		tint = mk1Tint
	}
}
cryogenicPlantMk1.icons = {
	{
		icon = cryogenicPlantMk1.icon,
		tint = mk1Tint
	}
}

--3 crafting speed, 2000KW electricity, 3 Module Slots, 7/m pollution, 20% productivity
foundryMk1.crafting_speed = 3
foundryMk1.energy_usage = "2MW"
foundryMk1.module_slots = 3
foundryMk1.energy_source.emissions_per_minute.pollution = 7
foundryMk1.effect_receiver.base_effect = {productivity = 0.2}
foundryMk1.minable.result = "cat-foundry-mk1"

-- (1.5 Mining Speed, 200KW electricity, 3 Module Slots, 45/m pollution, 75% resource drain)
bigMiningDrillMk1.mining_speed = 1.5
bigMiningDrillMk1.energy_usage = "200kW"
bigMiningDrillMk1.module_slots = 3
bigMiningDrillMk1.energy_source.emissions_per_minute.pollution = 45
bigMiningDrillMk1.resource_drain_rate_percent = 75
bigMiningDrillMk1.minable.result = "cat-big-mining-drill-mk1"

-- (0.25 crafting speed, 150KW electricity, 3 Module Slots, 3/m pollution)
recyclerMk1.crafting_speed = 0.25
recyclerMk1.energy_usage = "150kW"
recyclerMk1.module_slots = 3
recyclerMk1.energy_source.emissions_per_minute.pollution = 3
recyclerMk1.minable.result = "cat-recycler-mk1"

-- (1.5 crafting speed, 1.5MW electricity, 4 Module Slots, 5/m pollution, 20% Productivity)
electromagneticPlantMk1.crafting_speed = 1.5
electromagneticPlantMk1.energy_usage = "1.5MW"
electromagneticPlantMk1.module_slots = 4
electromagneticPlantMk1.energy_source.emissions_per_minute.pollution = 5
electromagneticPlantMk1.effect_receiver.base_effect = {productivity = 0.2}
electromagneticPlantMk1.minable.result = "cat-electromagnetic-plant-mk1"

-- (5x5 grid, 80KW electricity)
agriculturalTowerMk1.energy_usage = "80kW"
agriculturalTowerMk1.crane_energy_usage = "80kW"
agriculturalTowerMk1.radius = 2
agriculturalTowerMk1.minable.result = "cat-agricultural-tower-mk1"

-- (1.5 crafting speed, 450KW nutrients, -0.5/m pollution, 3 Module Slots, 20% productivity)
biochamberMk1.crafting_speed = 1.5
biochamberMk1.energy_usage = "450kW"
biochamberMk1.module_slots = 3
biochamberMk1.energy_source.emissions_per_minute.pollution = -0.5
biochamberMk1.effect_receiver.base_effect = {productivity = 0.2}
biochamberMk1.minable.result = "cat-biochamber-mk1"

-- (1.5 crafting speed, 1.2 MW electricity, 7/m pollution, 6 module slots)
cryogenicPlantMk1.crafting_speed = 1.5
cryogenicPlantMk1.energy_usage = "1.2MW"
cryogenicPlantMk1.module_slots = 6
cryogenicPlantMk1.energy_source.emissions_per_minute.pollution = 7
cryogenicPlantMk1.minable.result = "cat-cryogenic-plant-mk1"

data:extend{
	foundryMk1,
	bigMiningDrillMk1,
	recyclerMk1,
	electromagneticPlantMk1,
	agriculturalTowerMk1,
	biochamberMk1,
	cryogenicPlantMk1
}

--- Mk2 Versions

if settings.startup["augment-vanilla-buildings"].value then

	local foundryMk2 = table.deepcopy(data.raw["assembling-machine"]["foundry"])
	local bigMiningDrillMk2 = table.deepcopy(data.raw["mining-drill"]["big-mining-drill"])
	local recyclerMk2 = table.deepcopy(data.raw["furnace"]["recycler"])
	local electromagneticPlantMk2 = table.deepcopy(data.raw["assembling-machine"]["electromagnetic-plant"])
	local agriculturalTowerMk2 = table.deepcopy(data.raw["agricultural-tower"]["agricultural-tower"])
	local biochamberMk2 = table.deepcopy(data.raw["assembling-machine"]["biochamber"])
	local cryogenicPlantMk2 = table.deepcopy(data.raw["assembling-machine"]["cryogenic-plant"])

	foundryMk2.crafting_speed = 5.2
	bigMiningDrillMk2.resource_drain_rate_percent = 41
	recyclerMk2.crafting_speed = 0.65
	electromagneticPlantMk2.crafting_speed = 2.6
	biochamberMk2.crafting_speed = 2.6
	cryogenicPlantMk2.crafting_speed = 2.6
	agriculturalTowerMk2.radius = 4
	--agriculturalTowerMk2.randomize_planting_tile = false


	data:extend{
		foundryMk2,
		bigMiningDrillMk2,
		recyclerMk2,
		electromagneticPlantMk2,
		agriculturalTowerMk2,
		biochamberMk2,
		cryogenicPlantMk2
	}
end