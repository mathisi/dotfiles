return {
  'simrat39/rust-tools.nvim',
  dependencies = {
    -- Dependencies for rust-tools.nvim
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
  },
  config = function()
    local rt = require 'rust-tools'

    rt.setup {
      -- Here you can configure rust-tools.nvim as per your needs.
      tools = {
        -- Example configuration
        inlay_hints = {
          auto = true,
        },
      },
      server = {
        on_attach = function(_, bufnr)
          -- Hover actions
          vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
      },
    }
  end,
}
