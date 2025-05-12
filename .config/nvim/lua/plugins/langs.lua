return {
	"fatih/vim-go",
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
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
}
