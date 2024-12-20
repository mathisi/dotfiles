return {
  { import = 'plugins.autocomplete' },
  { import = 'plugins.autoformat' },
  { import = 'plugins.copilot' },
  { import = 'plugins.debug' },
  { import = 'plugins.git' },
  { import = 'plugins.helpers' },
  { import = 'plugins.indent' },
  { import = 'plugins.lint' },
  { import = 'plugins.lsp' },
  { import = 'plugins.neo-tree' },
  { import = 'plugins.oil' },
  { import = 'plugins.rust-tools' },
  { import = 'plugins.telescope' },
  { import = 'plugins.theme' },
  { import = 'plugins.treesitter' },
  { import = 'plugins.vim-test' },
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}
