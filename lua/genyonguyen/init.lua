require("genyonguyen.config.global")
require("genyonguyen.config.remap")
require("genyonguyen.config.lazy")
require("genyonguyen.config.tab")
require("genyonguyen.plugins.copilot")

-- The current <leader> is set to <Space>. If you wanna customize it, you can change it here

-- Keymap to navigate inside the hover window
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>wincmd p<CR>', { noremap = true, silent = true })
--Keymap to show information about the symbol under the cursor
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
-- Use <C-BS> to delete a word in insert mode
vim.api.nvim_set_keymap("i", "<C-BS>", "<C-w>", { noremap = true, silent = true })
-- Use <C-BS> to delete a word in command mode
vim.api.nvim_set_keymap("c", "<C-BS>", "<C-w>", { noremap = true, silent = true })
-- Use <C-o> for code formatting by LSP, n for Normal Mode
vim.keymap.set("n", "<C-o>", function()
    vim.lsp.buf.format()
    print("Code formatted successfully!")
end, {})
