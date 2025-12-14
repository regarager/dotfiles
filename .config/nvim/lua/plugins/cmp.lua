require("blink.cmp").setup({
	completion = {
		ghost_text = { enabled = true },
		menu = {
			draw = {
				padding = { 0, 1 }, -- padding only on right side
				components = {
					kind_icon = {
						text = function(ctx)
							return " " .. ctx.kind_icon .. ctx.icon_gap .. " "
						end,
					},
				},
			},
		},
	},
	keymap = { preset = "super-tab" },
	signature = { enabled = true },
	snippets = { preset = "luasnip" },
	sources = { default = { "lsp", "snippets", "path" } },
})

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

vim.api.nvim_set_hl(0, "BlinkCmpMenu", { link = "normal" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { link = "normal" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { link = "CursorLine" })
