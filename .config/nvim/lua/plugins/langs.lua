return {
	"fatih/vim-go",
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		priority = 49,
		opts = {
			typst = {
				enable = false,
			},
		},
	},
	{
		"kaarmu/typst.vim",
		ft = "typst",
		lazy = false,
	},
	{
		dir = "~/Projects/cheesepizza.nvim/",
		name = "cheesepizza",
		config = function()
			require("cheesepizza").setup({})
		end,
	},
	{ "wakatime/vim-wakatime", lazy = false },
	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
}
