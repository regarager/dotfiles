return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		snippets = { preset = "luasnip" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		keymap = { preset = "super-tab" },

		appearance = {
			highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},

		signature = { enabled = true, window = { border = "single" } },

		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 1000, window = { border = "single" } },
			ghost_text = { enabled = true },
			menu = { border = "single" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
