vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Set windows to equal size" })

keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })


function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
keymap.set("n", "\\", ":Neotree toggle<cr>", { desc = "Toggle Neotree" })
