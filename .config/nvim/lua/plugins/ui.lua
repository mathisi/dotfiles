return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
    messages = {
      enabled = false,
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      icons = {
        -- set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
        -- default whick-key.nvim defined Nerd Font icons, otherwise define a string table
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
      },

      -- Document existing key chains
      spec = {
        { '<leader>g', group = '[G]it', mode = { 'n' } },
        { '<leader>t', group = 'Vim [T]est', mode = { 'n' } },
        { '<leader>s', group = '[S]earch', mode = { 'n' } },
        { '<leader>c', group = '[C]ode manipulation', mode = { 'n' } },
        { '<leader>d', group = '[D]ebug', mode = { 'n' } },
        { '<leader>q', group = '[Q]uick diagnostics', mode = { 'n' } },
      },
    },
  },
  {
    'vimpostor/vim-lumen',
    config = function()
      -- Define themes for light and dark modes
      vim.g.lumen_light_theme = 'catppuccin-latte'
      vim.g.lumen_dark_theme = 'catppuccin-frappe'

      -- Override how lumen applies the colorscheme
      vim.api.nvim_create_autocmd('User', {
        pattern = 'LumenLight',
        callback = function()
          vim.cmd.colorscheme 'catppuccin-latte'
        end,
      })

      vim.api.nvim_create_autocmd('User', {
        pattern = 'LumenDark',
        callback = function()
          vim.cmd.colorscheme 'catppuccin-frappe'
        end,
      })

      -- Enable lumen
      vim.g.lumen_enable = true
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'catppuccin',
        },
        sections = {
          lualine_x = {
            {
              require('noice').api.statusline.mode.get,
              cond = require('noice').api.statusline.mode.has,
              color = { fg = '#ff9e64' },
            },
          },
          lualine_c = {
            {
              'filename',
              file_status = true,
              path = 1,
            },
          },
        },
      }
    end,
  },
}
