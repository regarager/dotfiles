return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<Tab>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
				{ name = "buffer" },
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, vim_item)
					local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
					local strings = vim.split(kind.kind, "%s", { trimempty = true })
					kind.kind = " " .. (strings[1] or "") .. " "
					kind.menu = "    (" .. (strings[2] or "") .. ")"

					return kind
				end,
			},
		})

		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#394b70", fg = "NONE" })
		vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C5CDD9", bg = "#22252A" })

		vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#7E8294", bg = "NONE", strikethrough = true })
		vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#82AAFF", bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#82AAFF", bg = "NONE", bold = true })
		vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#C792EA", bg = "NONE", italic = true })

		vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#0db9d7", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#0db9d7", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#0db9d7", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#c3e88d", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#c3e88d", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#c3e88d", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#ffe082", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#ffe082", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#ffe082", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#c099ff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#c099ff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#c099ff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#c099ff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#c099ff", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#ff757f", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#ff757f", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#ff966c", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#ff966c", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#ff966c", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#82aaff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#82aaff", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#82aaff", bg = "NONE" })

		vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#4fd6be", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#4fd6be", bg = "NONE" })
		vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#4fd6be", bg = "NONE" })
	end,
}
