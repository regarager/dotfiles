local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"css_variables",
		"cssls",
		"cssmodules_ls",
		"html",
		"lua_ls",
		"basedpyright",
		"rust_analyzer",
		"tinymist",
		"ts_ls",
		"typos_lsp",
	},
})

mason_tool_installer.setup({
	"black",
	"clang-format",
	"isort",
	"stylua",
	"typstyle",
})
