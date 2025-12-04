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
		"biome",
		"clangd",
		"css_variables",
		"cssls",
		"cssmodules_ls",
		"html",
		"hyprls",
		"lua_ls",
		"pyright",
		"rust_analyzer",
		"texlab",
		"tinymist",
		"ts_ls",
		"typos_lsp",
	},
})

mason_tool_installer.setup({
	"prettierd",
	"stylua",
	"isort",
	"black",
	"clang-format",
	"typstyle",
})
