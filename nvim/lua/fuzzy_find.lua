require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      }
    },
    -- generic_sorter =  require'telescope.sorters'.get_fzy_sorter,
    -- file_sorter =  require'telescope.sorters'.get_fzy_sorter,
    file_ignore_patterns = {".git"},

    -- Theme
    sorting_strategy = "ascending",
    layout_strategy = "center",
    results_title = false,
    preview_title = "Preview",
    preview_cutoff = 1, -- Preview should always show (unless previewer = false)
    width = 80,
    results_height = 15,
    borderchars = {
      { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
      prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
      preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰"},
    },
  },
  pickers = {
    find_files = {
      hidden = true
    }
  },
}

--Add leader shortcuts
vim.api.nvim_set_keymap('n', '<leader>p', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], { noremap = true, silent = true})

-- Git
vim.api.nvim_set_keymap('n', '<leader>gc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<cr>]], { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gp', [[<cmd>lua require('telescope.builtin').git_bcommits()<cr>]], { noremap = true, silent = true})
