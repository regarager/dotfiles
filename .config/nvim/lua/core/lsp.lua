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
	"lua_ls",
	"pyright",
	"rust_analyzer",
	"texlab",
	"tinymist",
	"ts_ls",
	"typos_lsp",
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
	cmd = { "clangd", "--header-insertion=never", "--function-arg-placeholders=false" },
})

vim.lsp.config("lua_ls", {
	on_init = function(client)
		local path = client.workspace_folders[1].name
		if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
			return
		end

		client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
			runtime = {
				version = "LuaJIT",
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		})
	end,
	settings = {
		Lua = {},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascriptreact,typescriptreact",
	callback = function()
		vim.b.disable_react_tag_warning = true
	end,
})

require("luasnip.loaders.from_vscode").lazy_load()
