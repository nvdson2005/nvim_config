require("genyonguyen.config.global")
require("genyonguyen.config.remap")
require("genyonguyen.config.lazy")
require("genyonguyen.config.tab")
require("genyonguyen.plugins.copilot")
require("genyonguyen.plugins.copilot-suggestion")
--Keymaps for Telescope (moved into telescope.lua)
--Keymaps for LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
-- The vim diagnostic is disappeared suddenly. So this is used to manually configure it
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    wrap = true,  -- Wrap long virtual text
  }
})

vim.diagnostic.config({
  signs = true,         -- Show signs in the sign column
  underline = true,     -- Underline diagnostic issues
  update_in_insert = false,  -- Don't show diagnostics while typing
  severity_sort = true, -- Sort diagnostics by severity
})
vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
vim.diagnostic.config({
  float = {
    border = "rounded",
    focusable = false,
    source = "always",
    format = function(diagnostic)
      return string.format("%s (%s)", diagnostic.message, diagnostic.source)
    end,
    wrap = true,  -- Enable line wrapping
    width = 80,   -- Adjust width to fit more text
  },
})

vim.diagnostic.config({
  severity = {
    min = vim.diagnostic.severity.HINT,  -- Ensure all severities are displayed
  }
})

-- Change diagnostic signs
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = "󰠠 ",
      [vim.diagnostic.severity.HINT] = " ",
    },
  },
})
-- Uncomment this if you want to disable the swap file
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "*",
--   callback = function()
--     vim.opt_local.swapfile = false
--   end,
-- })

-- (Don't know why: Press <C-p> in insert mode to open code suggestions)
-- When in code suggestion, use <C-n> to navigate down, <C-p> to navigate up, <C-y> to select the current suggestion

-- In command mode, press <Tab> to show the command suggestion, use <C-n> to navigate down, <C-p> to navigate up, <C-y> to select the current suggestion
-- Or use <C-d> to show all available commands
-- The current <leader> is set to <Space>. If you wanna customize it, you can change it here

-- Press shift+k to show hover information
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

--Print current function's signature information under the cursor in normal mode
vim.api.nvim_set_keymap('n', '<C-q>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })

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

-- Keymap <C-f> and <C-b> can be used in normal mode to quickly navigate in the buffer
