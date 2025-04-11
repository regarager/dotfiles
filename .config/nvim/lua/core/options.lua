local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

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

vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = { "*.stpl", "*.ejs" },
	command = "set filetype=html",
})

-- ensures line number colors are correct even after switching theme
vim.api.nvim_create_autocmd("Colorscheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#bbbbbb" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff9933", bold = true })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#bbbbbb" })
	end,
})

vim.cmd("colorscheme tokyonight-moon")
