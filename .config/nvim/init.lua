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
vim.opt.rtp:append("~/Projects/cheesepizza.nvim/")
require("cheesepizza").setup()

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*.cpp",
	callback = function()
		vim.keymap.set("n", "<leader>r", ":RunTerm<CR>")
	end,
})

require("gitsigns").setup()
require("mini.extra").setup()
require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("colorizer").setup()
require("oil").setup()

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		if
			vim.bo.filetype == "oil"
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

require("nvim-ts-autotag").setup()

require("lualine").setup({ options = { theme = "kanagawa" } })

require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "lua", "python" },
	sync_install = false,
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
