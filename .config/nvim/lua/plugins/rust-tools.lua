return {
  'simrat39/rust-tools.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
  },
  config = function()
    local rt = require 'rust-tools'
    local keymaps = require 'core.keymaps'

    rt.setup {
      tools = {
        inlay_hints = {
          auto = true,
        },
      },
      server = {
        on_attach = keymaps.on_rust_attach,
      },
    }
  end,
}
