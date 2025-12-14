-- essential files
require("core.pack")
require("core.keymaps")
require("core.options")
require("core.lsp")

-- longer plugin setups
require("plugins.cmp")
require("plugins.mason")
require("plugins.notebook")
require("plugins.diagnostics").setup()

-- smaller plugins
vim.opt.rtp:append("~/Projects/cheesepizza.nvim/")

require("cheesepizza").setup()
require("gitsigns").setup()
require("mini.extra").setup()
require("mini.icons").setup()
require("mini.pairs").setup()
require("mini.pick").setup()
require("lualine").setup({ options = { theme = "kanagawa" } })
require("nvim-highlight-colors").setup({ render = "virtual" })
require("nvim-ts-autotag").setup()
require("oil").setup()
require("todo-comments").setup()
require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp", "lua", "python" },
	highlight = { enable = true },
	indent = { enable = true },
})
require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettierd" },
		typescript = { "prettierd" },
		javascriptreact = { "prettierd" },
		typescriptreact = { "prettierd" },
		css = { "prettierd" },
		html = { "prettierd" },
		json = { "prettierd" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		lua = { "stylua" },
		python = { "black", "isort" },
		rust = { "rustfmt" },
		typst = { "typstyle" },
		["*"] = { "trim_whitespace" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
    -- disable special buffers from being automatically created
		if vim.bo.filetype == "oil" or vim.bo.filetype == "term" or vim.api.nvim_buf_get_name(0) == "" then
			return
		end

		local dir = vim.fs.dirname(vim.api.nvim_buf_get_name(0))
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})
