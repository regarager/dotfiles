return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")

		require("mason-lspconfig").setup()

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
			end,
		})

		lspconfig["tinymist"].setup({
			settings = {
				formatterMode = "typstyle",
				exportPdf = "onSave",
			},
		})
	end,
}
