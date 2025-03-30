
return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      -- { "github/copilot.vim" },                       -- or zbirenbaum/copilot.lua.
      -- This is commented as the copilot suggestion module is configured directly from zbirenbaum/copilot.lua in copilot-suggestion.lua file.
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      window = {
        width = 0.35,
      },
      show_help = true,
      keymap = {
        accept = "<Tab>",
      }
    },
    -- use default configuration instead, more in https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#sticky-prompts
    -- See Commands section for default commands if you want to lazy load on them
    -- config=function ()
    --   require("CopilotChat").setup({
    --     suggestion = {
    --       auto_trigger = true,
    --       keymap = {
    --         accept = "<C-s>",
    --         next = "<C-d>",
    --         prev = "<C-a>",
    --         dismiss = "<C-~>",
    --       },
    --     },
    --     panel = { enabled = false }, -- Disable side panel
    --   })
    -- end

  },
}
