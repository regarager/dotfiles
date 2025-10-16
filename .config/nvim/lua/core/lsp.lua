vim.lsp.enable({
	"bashls",
	"biome",
	"clangd",
	"css_variables",
	"cssls",
	"cssmodules_ls",
	"gopls",
	"html",
	"hyprls",
	"jsonls",
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"tailwindcss",
	"texlab",
	"tinymist",
	"ts_ls",
	"typos_lsp",
	"zls",
})

vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

		if false and client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

vim.lsp.config("tinymist", {
	formatterMode = "typstyle",
	exportPdf = "onSave",
})

vim.lsp.config("clangd", {
	cmd = { "clangd", "--header-insertion=never" },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascriptreact,typescriptreact",
	callback = function()
		vim.b.disable_react_tag_warning = true
	end,
})

require("luasnip.loaders.from_vscode").lazy_load()

vim.cmd("set completeopt+=noselect")
