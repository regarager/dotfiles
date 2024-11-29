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


vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "*.stpl" },
  command = "set filetype=html"
})

vim.cmd.colorscheme("bamboo")
vim.cmd("TransparentEnable")
vim.cmd("set mouse=")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#aaaaaa", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#aaaaaa" })
