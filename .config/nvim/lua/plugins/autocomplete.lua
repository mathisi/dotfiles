return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = 'v0.*',

    opts = {
      keymap = {
        preset = 'default',

        ['<C-y>'] = { 'select_and_accept', 'fallback' },

        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },

        ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-x>'] = { 'hide' },

        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

        ['<C-n>'] = { 'snippet_forward', 'fallback' },
        ['<C-p>'] = { 'snippet_backward', 'fallback' },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
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
