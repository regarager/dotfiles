return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "andrew-george/telescope-themes",
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
    },
    config = function()
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            ".git"
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
          find_files = { follow = true, hidden = true},
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
          }
        },
      })

      require("telescope").load_extension("themes")
      require("telescope").load_extension('fzf')

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "ff", builtin.find_files, {})
      vim.keymap.set("n", "fg", builtin.live_grep, {})
      vim.keymap.set("n", "fb", builtin.buffers, {})
      vim.keymap.set("n", "fh", builtin.help_tags, {})
      vim.keymap.set("n", "fc", builtin.current_buffer_fuzzy_find, {})
      vim.keymap.set("n", "fs", builtin.lsp_workspace_symbols, {})
      vim.keymap.set(
        "n",
        "fth",
        ":Telescope themes<CR>",
        { noremap = true, silent = true, desc = "Theme Switcher" }
      )
    end,
  },
}
