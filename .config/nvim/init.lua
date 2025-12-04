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

-- misc setups
vim.g.suda_smart_edit = 1

vim.opt.rtp:append("~/Projects/cheesepizza.nvim/")
require("cheesepizza").setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "java", "cpp" },
	callback = function()
		vim.keymap.set("n", "<leader>r", ":RunTerm<CR>")
	end,
})

require("gitsigns").setup()
require("mini.extra").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("colorizer").setup()
require("oil").setup()

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		if
			vim.bo.filetype == "oil"
			or vim.bo.filetype == "suda"
			or vim.bo.filetype == "term"
			or vim.api.nvim_buf_get_name(0) == ""
		then
			return
		end

		local dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})

require("todo-comments").setup()

require("ufo").setup({
	provider_selector = function()
		return { "treesitter", "indent" }
	end,
})

require("nvim-ts-autotag").setup()

require("lualine").setup({ options = { theme = "kanagawa" } })

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"cpp",
		"html",
		"hyprlang",
		"java",
		"javascript",
		"json",
		"jsonc",
		"lua",
		"markdown",
		"python",
		"typescript",
		"markdown_inline",
		"typst",
	},
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})
