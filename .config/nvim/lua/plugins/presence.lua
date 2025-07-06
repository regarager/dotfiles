return {
	{
		"IogaMaster/neocord",
		event = "VeryLazy",
		config = function()
			require("neocord").setup({
				global_timer = true,
			})
		end,
	},
}
