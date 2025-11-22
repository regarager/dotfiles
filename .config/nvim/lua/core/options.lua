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

opt.fillchars:append({ eob = " " })

vim.g.suda_smart_edit = 1

-- ensures line number colors are correct even after switching theme
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7E9CD8" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF9E3B", bold = true })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#E46876" })
	end,
})

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
