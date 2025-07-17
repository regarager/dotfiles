return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				ejs = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				lua = { "stylua" },
				python = { "black", "isort" },
				cpp = { "clang-format" },
				c = { "clang-format" },
				java = { "astyle" },
				rust = { "rustfmt" },
				["*"] = { "trim_whitespace" },
			},
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 2000,
			},
		})

		-- Source: https://astyle.sourceforge.net/astyle.html
		require("conform").formatters.astyle = {
			inherit = false,
			command = "astyle",
			args = {
				"--align-pointer=type",
				"--break-blocks",
				"--indent=spaces=2",
				"--pad-header",
				"--pad-include",
				"--pad-oper",
				"--style=google",
				"--unpad-paren",
				"--close-templates",
				"--squeeze-ws",
			},
		}
	end,
}
