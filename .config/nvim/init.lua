local opt = vim.opt
local map = vim.keymap.set
vim.g.mapleader = " "

-- options
opt.mouse = ""
opt.clipboard:append("unnamedplus")
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.linebreak = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.pumheight = 20
opt.hlsearch = false
opt.incsearch = true
opt.winborder = "rounded"
opt.swapfile = false

-- plugin setup
vim.pack.add({
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/OXY2DEV/markview.nvim" },
	{ src = "https://github.com/arborist-ts/arborist.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.0") },
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
})

require("arborist").setup({
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = { "c", "cpp", "lua", "markdown", "python", "rust", "typst" },
})
require("blink.cmp").setup({
	keymap = { preset = "super-tab" },
	snippets = { preset = "luasnip" },
	sources = { default = { "lsp", "snippets", "path" } },
})
require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		rust = { "rustfmt" },
		typst = { "typstyle" },
		["*"] = { "trim_whitespace" },
	},
})
require("diagnostics").setup()
require("kanagawa").setup({ transparent = true, theme = "wave" })
require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/nvim/lua/snippets" } })
require("markview").setup()
require("mini.extra").setup()
require("mini.icons").setup()
require("mini.move").setup()
require("mini.pick").setup({ window = { config = { height = 8, width = 64 } } })
require("mini.pairs").setup()
require("oil").setup()

vim.cmd("colorscheme kanagawa")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7e9cd8" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#e46876" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ebcb8b", bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "normal" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "normal" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { link = "CursorLine" })

-- keymaps
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>l", "<C-w>l")
map("n", "<leader>sv", ":vsplit<CR>")
map("n", "<leader>sh", ":split<CR>")
map("n", "F", ":lua require'conform'.format({ async = true })<CR>", { silent = true })
map("n", "<leader>e", ":Oil<CR>")
map("n", "ff", ":Pick files<CR>")
map("n", "fg", ":Pick grep_live<CR>")
map("n", ";", ":!")
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")
map("n", "<Tab>", ">>")
map("n", "<S-Tab>", "<<")
map("n", "<leader>t", function()
	vim.cmd("vnew")
	vim.cmd("term")
	vim.api.nvim_feedkeys("i", "n", false)
	vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { buffer = 0 })
end, { silent = true })

-- misc
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		map("n", "<leader>r", ":RunTerm<CR>", { buffer = 0 })
		map("n", "<leader>d", ":DebugToggle<CR>", { buffer = 0 })
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		-- disable special buffers from being automatically created
		local ftypes = { "oil", "term" }
		if vim.tbl_contains(ftypes, vim.bo.filetype) or vim.api.nvim_buf_get_name(0) == "" then
			return
		end

		local dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})

-- lsp
vim.lsp.config("clangd", { cmd = { "clangd", "--function-arg-placeholders=false" } })
vim.lsp.config("tinymist", { exportPdf = "onSave" })
vim.lsp.enable({ "clangd", "lua_ls", "pyright", "rust_analyzer" })
