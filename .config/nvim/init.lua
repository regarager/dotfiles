-- essential files
require("core.plugins")
require("core.keymaps")
require("core.options")
require("core.lsp")

-- plugin setups
require("plugins.cmp")
require("plugins.errors")
require("plugins.formatting")
require("plugins.lazydev")
require("plugins.mason")
require("plugins.notebook")
require("plugins.telescope")
require("plugins.treesitter")

-- misc setups
vim.g.suda_smart_edit = 1

require("cheesepizza").setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "java", "cpp" },
	callback = function()
		vim.keymap.set("n", "<leader>r", ":RunTerm<CR>")
	end,
})

require("gitsigns").setup()
require("mini.notify")
require("mini.pairs").setup()
require("mini.pick").setup()
require("neocord").setup({
	global_timer = true,
})
require("nvim-highlight-colors").setup()
require("oil").setup()
require("toggleterm").setup()

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		local dir = vim.fn.expand("<afile>:p:h")

		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})

require("Comment").setup({
	toggler = {
		line = "<leader>/",
	},
	opleader = {
		line = "<leader>/",
	},
})

require("todo-comments").setup()

require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})

require("nvim-ts-autotag").setup({})
local TagConfigs = require("nvim-ts-autotag.config.init")
TagConfigs:add_alias("stpl", "html")
TagConfigs:add_alias("ejs", "html")

require("lualine").setup({
	options = {
		theme = "kanagawa",
	},
})
