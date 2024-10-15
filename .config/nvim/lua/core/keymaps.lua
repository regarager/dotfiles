vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontaly" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Set windows to equal size" })
keymap.set("n", "<leader>q", ":close<CR>", { desc = "Close current window" })

keymap.set("n", "\\", ":Neotree toggle<cr>", { desc = "Toggle Neotree" })
