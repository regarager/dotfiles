local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = true
opt.linebreak = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.pumheight = 20

opt.hlsearch = false
opt.incsearch = true

opt.winborder = "rounded"

opt.swapfile = false

opt.foldcolumn = "0"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.fillchars:append({ eob = " " })

require("kanagawa").setup({
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none",
					bg = "none",
				},
			},
		},
	},
})

vim.cmd("colorscheme kanagawa-wave")
vim.cmd("set completeopt+=noselect")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7E9CD8" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF9E3B", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#E46876" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
