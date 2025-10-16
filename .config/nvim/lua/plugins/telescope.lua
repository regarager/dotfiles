require("telescope").setup({
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			".git",
		},
		results_title = false,
		sorting_strategy = "ascending",
		layout_strategy = "center",
		layout_config = {
			preview_cutoff = 1, -- Preview should always show (unless previewer = false)
			width = function(_, max_columns, _)
				return math.min(max_columns, 80)
			end,
			height = function(_, _, max_lines)
				return math.min(max_lines, 15)
			end,
		},
		border = true,
		borderchars = {
			prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
			results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
			preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		},
	},
	pickers = {
		find_files = { follow = true, hidden = true },
	},

	extensions = {
		themes = {
			persist = { enable = false },
		},
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

require("telescope").load_extension("themes")
require("telescope").load_extension("fzf")
