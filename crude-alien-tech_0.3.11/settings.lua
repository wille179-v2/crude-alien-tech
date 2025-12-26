-- settings can be accessed by using settings.startup["setting-name"].value
data:extend({
	{
		type = "bool-setting",
		name = "augment-vanilla-buildings",
		setting_type = "startup",
		default_value = true,
		order="a"
	},
	{
		type = "bool-setting",
		name = "use-chain-recipe",
		setting_type = "startup",
		default_value = true,
		order="b"
	},
	{
		type = "bool-setting",
		name = "oxygen-fuels",
		setting_type = "startup",
		default_value = true,
		order="c"
	},
	{
		type = "bool-setting",
		name = "scrap-power-poles",
		setting_type = "startup",
		default_value = true,
		order="d"
	},
	{
		type = "bool-setting",
		name = "small-agri-tower",
		setting_type = "startup",
		default_value = true,
		order = "a-b"
	}
})