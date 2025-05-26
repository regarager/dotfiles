return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				ejs = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				lua = { "stylua" },
				python = { "black", "isort" },
				cpp = { "astyle" },
				c = { "astyle" },
				java = { "astyle" },
				["*"] = { "trim_whitespace" },
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			},
		})

		-- Source: https://astyle.sourceforge.net/astyle.html
		require("conform").formatters.astyle = {
			inherit = false,
			command = "astyle",
			args = {
				"--style=google",
				"--indent=spaces=2",
				"--break-blocks",
				"--pad-oper",
				"--pad-include",
				"--pad-header",
				"--unpad-paren",
				"--align-pointer=type",
			},
		}
	end,
}
