return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case',
                },
            },
        }
-- Keymaps for Telescope
vim.keymap.set('n', 'ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true, silent = true })
vim.keymap.set('n', 'fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true, silent = true })
vim.keymap.set('n', 'fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true, silent = true })
vim.keymap.set('n', 'fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true, silent = true })
    end,
}
