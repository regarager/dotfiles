vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
map("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Set windows to equal size" })
map("n", "<leader>h", "<C-w><left>", { desc = "Move to left window" })
map("n", "<leader>j", "<C-w><down>", { desc = "Move to window below" })
map("n", "<leader>k", "<C-w><up>", { desc = "Move to above window" })
map("n", "<leader>l", "<C-w><right>", { desc = "Move to right window" })

map("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

map("n", "J", "mzJ`z")

map("v", "<Tab>", ">", { desc = "Indent" })
map("i", "<Tab>", "  ", { desc = "Indent" })
map("n", "<Tab>", function()
	if vim.api.nvim_get_current_line():match("^%s*$") then
		vim.api.nvim_put({ "\t" }, "c", false, true)
	else
		vim.cmd("normal! >>")
	end
end, { noremap = true, silent = true })

map("n", "<leader>F", ":lua vim.lsp.buf.format()<CR>", { desc = "Format document", silent = true, noremap = true })
map("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle terminal" })

map("n", "<leader>e", ":Oil<CR>", { desc = "Open oil.nvim", silent = true })

map("n", "ff", ":Pick files<CR>", { silent = true })
map("n", "fg", ":Pick grep_live<CR>", { silent = true })
map("n", "fd", ":Pick git_hunks<CR>", { silent = true })
map("n", "fx", ":Pick diagnostic scope='current'<CR>", { silent = true })
map("n", "fs", ":Pick lsp scope='document_symbol'<CR>", { silent = true })

map("n", "zR", require("ufo").openAllFolds)
map("n", "zM", require("ufo").closeAllFolds)

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	map("t", "<esc>", [[<C-\><C-n>]], opts)
	map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
