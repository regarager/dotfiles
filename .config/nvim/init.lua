-- essential files
require("core.pack")
require("core.keymaps")
require("core.options")
require("core.lsp")

-- plugin setups
require("plugins.cmp")
require("plugins.formatting")
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
require("nvim-highlight-colors").setup()
require("oil").setup()
require("toggleterm").setup()

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		if vim.bo.filetype == "oil" or vim.api.nvim_buf_get_name(0) == "" then
			return
		end

		local dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
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
	provider_selector = function()
		return { "treesitter", "indent" }
	end,
})

require("nvim-ts-autotag").setup()

require("lualine").setup({
	options = {
		theme = "kanagawa",
	},
})
