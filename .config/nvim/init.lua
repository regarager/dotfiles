vim.opt.ignorecase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("syntax on")
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"

require("config.lazy")

require("plugins")
require("lualine").setup({
  options = {
    theme = "horizon"
  }
})
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = require("config.servers"),
}

require("java").setup()

require("lsp-zero")
require("lspconfig").intelephense.setup({})
require('lspconfig').jdtls.setup({})
require('Comment').setup()
require('nvim-ts-autotag').setup({})
require("prettier").setup()
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true,         -- use a classic bottom cmdline for search
    command_palette = true,       -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false,           -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false,       -- add a border to hover docs and signature help
  },
})

require("config.autopairs")
require("config.cmp")
require("config.lsp")
require("config.telescope")
require("config.treesitter")

vim.api.nvim_set_keymap("n", "\\", ":Neotree toggle<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferPrevious<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Q>", ":BufferClose<cr>", { noremap = true })

vim.cmd.colorscheme("tokyonight-moon")
vim.cmd("TransparentEnable")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#999999" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#e6e6e6" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#999999" })
