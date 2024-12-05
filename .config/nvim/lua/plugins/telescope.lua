return { {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "ff", builtin.find_files, {})
    vim.keymap.set("n", "fg", builtin.live_grep, {})
    vim.keymap.set("n", "fb", builtin.buffers, {})
    vim.keymap.set("n", "fh", builtin.help_tags, {})
    vim.keymap.set("n", "fc", builtin.current_buffer_fuzzy_find, {})
    vim.keymap.set("n", "fth", builtin.colorscheme, {})
  end
}, {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end
} }
