return {
	"fatih/vim-go",
	{
		"OXY2DEV/markview.nvim",
		enable = false,
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

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "python", "java", "cpp" },
				callback = function()
					vim.keymap.set("n", "<leader>r", ":RunTerm<CR>")
				end,
			})
		end,
	},
	{ "wakatime/vim-wakatime", lazy = false },
	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
}
