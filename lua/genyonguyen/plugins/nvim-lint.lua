-- nvim-lint (for shellcheck)
return {
  "mfussenegger/nvim-lint",
  config = function()
    require("lint").linters_by_ft = {
      sh = { "shellcheck" },   -- Enable shellcheck for shell scripts
    }
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
