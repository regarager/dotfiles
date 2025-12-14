require("nvim-jupyter-client").setup({})

vim.keymap.set("n", "<leader>ja", "<cmd>JupyterAddCellBelow<CR>", { desc = "Add Jupyter cell below" })
vim.keymap.set("n", "<leader>jA", "<cmd>JupyterAddCellAbove<CR>", { desc = "Add Jupyter cell above" })

vim.keymap.set("n", "<leader>jd", "<cmd>JupyterRemoveCell<CR>", { desc = "Remove current Jupyter cell" })
vim.keymap.set("n", "<leader>jm", "<cmd>JupyterMergeCellAbove<CR>", { desc = "Merge with cell above" })
vim.keymap.set("n", "<leader>jM", "<cmd>JupyterMergeCellBelow<CR>", { desc = "Merge with cell below" })
vim.keymap.set("n", "<leader>jt", "<cmd>JupyterConvertCellType<CR>", { desc = "Convert cell type (code/markdown)" })
vim.keymap.set("v", "<leader>jm", "<cmd>JupyterMergeVisual<CR>", { desc = "Merge selected cells" })
vim.keymap.set(
	"n",
	"<leader>jD",
	"<cmd>JupyterDeleteCell<CR>",
	{ desc = "Delete cell under cursor and store in register" }
)

require("nvim-python-repl").setup({
	execute_on_send = true,
	vsplit = true,
})

vim.api.nvim_create_autocmd("BufRead", {
	pattern = { "*.ipynb" },
	callback = function()
		vim.keymap.set("n", "<leader>r", function()
			require("nvim-python-repl").send_current_cell_to_repl()
		end, { desc = "Sends the cell under cursor to repl" })
		vim.keymap.set("n", "<leader>R", function()
			require("nvim-python-repl").send_buffer_to_repl()
		end, { desc = "Send entire buffer to REPL" })
	end,
})
