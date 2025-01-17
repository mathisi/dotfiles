return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',

    version = 'v0.*',

    opts = {
      -- Keymaps are moved out of this section

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      -- signature = { enabled = true },
    },
  },
  {
    'm4xshen/autoclose.nvim',
    opts = {},
  },
}
