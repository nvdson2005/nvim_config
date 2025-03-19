  -- conform.nvim (for shellharden)
  return {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          sh = { "shellharden" }, -- Enable shellharden for formatting shell scripts
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.sh" },
        callback = function()
          require("conform").format()
        end,
      })
    end,
  }
