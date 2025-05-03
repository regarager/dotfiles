return {
	"fatih/vim-go",
	{
		"nvim-java/nvim-java",
	},
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
