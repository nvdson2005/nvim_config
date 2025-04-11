return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-s>",
          next = "<C-d>",
          prev = "<C-a>",
          dismiss = "<C-~>",
        },
      },
      panel = { enabled = false }, -- Disable side panel
    })
  end,
  -- Add a toggle command for suggestions
  -- vim.api.nvim_create_user_command("CopilotToggleSuggestion", function()
  --   local copilot = require("copilot")
  --   local enabled = copilot.suggestion.enabled
  --   if enabled then
  --     copilot.suggestion.disable()
  --     print("Copilot suggestions disabled")
  --   else
  --     copilot.suggestion.enable()
  --     print("Copilot suggestions enabled")
  --   end
  -- end, {}),

  --User-defined commands
  -- Check for current suggestion status
  vim.api.nvim_create_user_command("CopilotSuggestionStatus", function()
    vim.cmd("Copilot")
  end, {}),
  --Enable code suggestion
  vim.api.nvim_create_user_command("CopilotSuggestionEnable", function()
    vim.cmd("Copilot enable")
  end
  , {}),
  --Disable code suggestion
  vim.api.nvim_create_user_command("CopilotSuggestionDisable", function()
    vim.cmd("Copilot disable")
  end, {})
}
