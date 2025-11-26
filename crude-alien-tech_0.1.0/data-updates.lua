-- Flare Stack compatability

if mods["Flare Stack"] then 
	table.insert(data.raw["technology"]["cat-cold-chemistry"].prerequisites, "flare-stack-fluid-venting-tech")
	data.raw["technology"]["flare-stack-fluid-venting-tech"].essential = true

	local ventOxygen = data.raw["recipe"]["cat-vent-oxygen"]
	local ventNitrogen = data.raw["recipe"]["cat-vent-nitrogen"]
	local ventHydrogen = data.raw["recipe"]["cat-vent-hydrogen"]

	ventOxygen.hidden_from_player_crafting = true
	ventOxygen.hidden_in_factoriopedia = true
	ventOxygen.hidden  = true

	ventNitrogen.hidden_from_player_crafting = true
	ventNitrogen.hidden_in_factoriopedia = true
	ventNitrogen.hidden  = true

	ventHydrogen.hidden_from_player_crafting = true
	ventHydrogen.hidden_in_factoriopedia = true
	ventHydrogen.hidden  = true
end


-- Any Planet Start compatability


-- Omega Drill compatability


-- Planetaris: Arig compatability
	--TODO: Remove references to Arig from base mod

if mods["planetaris-arig"] then
	local sand = data.raw["fluid"]["cat-sand"]
	sand.hidden = true
	sand.hidden_in_factoriopedia = true
	sand.hidden_from_player_crafting = true

	local pureSand = data.raw["fluid"]["cat-pure-sand"]
	pureSand.hidden = true
	pureSand.hidden_in_factoriopedia = true
	pureSand.hidden_from_player_crafting = true
end