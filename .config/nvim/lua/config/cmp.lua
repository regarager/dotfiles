local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

cmp.setup({
    preselect = "item",
    completion = {
        completeopt = "menu,menuone,noinsert"
    },
    sources = {
        { name = "nvim_lsp", "luasnip", "buffer", "path" },
    },
    mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.confirm { select = true },
    }),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = { "abbr", "kind", "menu" },
        format = require("lspkind").cmp_format({
            mode = "symbol",       -- show only symbol annotations
            maxwidth = 50,         -- prevent the popup from showing more than provided characters
            ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
        })
    },
})
