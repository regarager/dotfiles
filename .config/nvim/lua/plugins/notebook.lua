return {
	{
		"geg2102/nvim-jupyter-client",
		config = function()
			require("nvim-jupyter-client").setup({})

			vim.keymap.set("n", "<leader>ja", "<cmd>JupyterAddCellBelow<CR>", { desc = "Add Jupyter cell below" })
			vim.keymap.set("n", "<leader>jA", "<cmd>JupyterAddCellAbove<CR>", { desc = "Add Jupyter cell above" })

			vim.keymap.set("n", "<leader>jd", "<cmd>JupyterRemoveCell<CR>", { desc = "Remove current Jupyter cell" })
			vim.keymap.set("n", "<leader>jm", "<cmd>JupyterMergeCellAbove<CR>", { desc = "Merge with cell above" })
			vim.keymap.set("n", "<leader>jM", "<cmd>JupyterMergeCellBelow<CR>", { desc = "Merge with cell below" })
			vim.keymap.set(
				"n",
				"<leader>jt",
				"<cmd>JupyterConvertCellType<CR>",
				{ desc = "Convert cell type (code/markdown)" }
			)
			vim.keymap.set("v", "<leader>jm", "<cmd>JupyterMergeVisual<CR>", { desc = "Merge selected cells" })
			vim.keymap.set(
				"n",
				"<leader>jD",
				"<cmd>JupyterDeleteCell<CR>",
				{ desc = "Delete cell under cursor and store in register" }
			)
		end,
	},
	{
		"geg2102/nvim-python-repl",
		ft = { "python", "lua", "scala" },
		config = function()
			require("nvim-python-repl").setup({
				execute_on_send = true,
				vsplit = true,
			})

			vim.keymap.set("n", "<leader>r", function()
				require("nvim-python-repl").send_current_cell_to_repl()
			end, { desc = "Sends the cell under cursor to repl" })
			vim.keymap.set("n", "<leader>R", function()
				require("nvim-python-repl").send_buffer_to_repl()
			end, { desc = "Send entire buffer to REPL" })
		end,
	},
}

-- return {
-- 	{
-- 		"benlubas/molten-nvim",
-- 		version = "^1.0.0",
-- 		dependencies = { "3rd/image.nvim" },
-- 		build = ":UpdateRemotePlugins",
-- 		init = function()
-- 			vim.g.molten_image_provider = "image.nvim"
-- 			vim.g.molten_output_win_max_height = 20
-- 			vim.g.molten_auto_open_output = false
-- 			vim.g.molten_wrap_output = true
-- 			vim.g.molten_virt_text_output = true
-- 			vim.g.molten_virt_lines_off_by_1 = true
--
-- 			vim.keymap.set(
-- 				"n",
-- 				"<leader>ro",
-- 				":noautocmd MoltenEnterOutput<CR>",
-- 				{ desc = "open output window", silent = true }
-- 			)
-- 			vim.keymap.set("n", "<leader>ip", function()
-- 				local venv = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX")
-- 				if venv ~= nil then
-- 					venv = string.match(venv, "/.+/(.+)")
-- 					vim.cmd(("MoltenInit %s"):format(venv))
-- 				else
-- 					vim.cmd("MoltenInit python3")
-- 				end
-- 			end, { desc = "Initialize Molten for python3", silent = true })
-- 		end,
-- 	},
-- 	{
-- 		"3rd/image.nvim",
-- 		opts = {
-- 			backend = "kitty",
-- 			max_width = 100,
-- 			max_height = 12,
-- 			max_height_window_percentage = math.huge,
-- 			max_width_window_percentage = math.huge,
-- 			window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
-- 			window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
-- 		},
-- 	},
-- 	{
-- 		"quarto-dev/quarto-nvim",
-- 		dependencies = {
-- 			"jmbuhr/otter.nvim",
-- 			"nvim-treesitter/nvim-treesitter",
-- 		},
-- 		config = function()
-- 			local quarto = require("quarto")
-- 			quarto.setup({
-- 				lspFeatures = {
-- 					languages = { "python" },
-- 					chunks = "all",
-- 					diagnostics = {
-- 						enabled = true,
-- 						triggers = { "BufWritePost" },
-- 					},
-- 					completion = {
-- 						enabled = true,
-- 					},
-- 				},
-- 				codeRunner = {
-- 					enabled = true,
-- 					default_method = "molten",
-- 				},
-- 			})
--
-- 			local runner = require("quarto.runner")
-- 			vim.keymap.set("n", "<leader>r", runner.run_cell, { desc = "run cell", silent = true })
-- 			vim.keymap.set("n", "<leader>ra", runner.run_above, { desc = "run cell and above", silent = true })
-- 			vim.keymap.set("n", "<leader>rA", runner.run_all, { desc = "run all cells", silent = true })
-- 			vim.keymap.set("n", "<leader>rl", runner.run_line, { desc = "run line", silent = true })
-- 			vim.keymap.set("v", "<leader>r", runner.run_range, { desc = "run visual range", silent = true })
-- 			vim.keymap.set("n", "<leader>RA", function()
-- 				runner.run_all(true)
-- 			end, { desc = "run all cells of all languages", silent = true })
-- 		end,
-- 	},
-- 	{
-- 		"GCBallesteros/jupytext.nvim",
-- 		config = function()
-- 			require("jupytext").setup({
-- 				style = "markdown",
-- 				output_extension = "md",
-- 				force_ft = "markdown",
-- 			})
-- 		end,
-- 	},
-- }
