return {
    'numToStr/Comment.nvim',
    config=function()
        require('Comment').setup({
          padding = true,
          sticky = true,
          ignore = nil,
          ---LHS of toggle mappings in NORMAL mode
          toggler = {
              ---Line-comment toggle keymap
              line = 'gcc',
              ---Block-comment toggle keymap
              block = 'gbc',
          },
          ---LHS of operator-pending mappings in NORMAL and VISUAL mode
          opleader = {
              ---Line-comment keymap
              line = 'gc',
              ---Block-comment keymap
              block = 'gb',
          },
          extra = { above = 'gcO', below = 'gco', eol = 'gcA' },
          mappings = { basic = true, extra = true },
          pre_hook = nil,
          post_hook = nil,
        })
    end
}
