vim.opt.ignorecase = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.number = true
vim.cmd('syntax on')
vim.opt.ttyfast = true

require("plugins")

vim.cmd[[
     inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>" 
]]
vim.api.nvim_set_keymap('n', '\\', ':Neotree toggle<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Tab>', ':BufferNext<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':BufferNext<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-Q>', ':BufferClose<cr>', {noremap = true})

vim.cmd.colorscheme('kanagawa-wave')

vim.g.coc_global_extensions = {
    'coc-clangd',
    'coc-css',
    'coc-git',
    'coc-go',
    'coc-html',
    'coc-json',
    'coc-lua',
    'coc-pairs',
    'coc-pyright',
    'coc-tsserver',
    'coc-zig',

    'coc-discord-rpc',
}
