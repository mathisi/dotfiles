return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = 'v0.*',

    opts = {
      keymap = {
        preset = 'default',

        ['<C-y>'] = { 'select_and_accept', 'fallback' },

        ['<C-n>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback' },

        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-x>'] = { 'hide' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
      },

      cmdline = {
        completion = {
          ghost_text = { enabled = false },
        },
        enabled = true,
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      signature = { enabled = true },
    },
  },
  {
    'm4xshen/autoclose.nvim',
    opts = {},
  },
}
