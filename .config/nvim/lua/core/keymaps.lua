-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>qe', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Use kj to exit insert mode
vim.keymap.set('i', 'kJ', '<Esc>')
vim.keymap.set('i', 'KJ', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- Remap 'j' and 'k' to behave like 'gj' and 'gk' for visual line navigation
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

-- Optionally, you might want to remap them for visual mode as well
vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })

-- Scroll page up and down conflict with tmux
vim.keymap.set('n', '<C-u>', '<C-b>', { noremap = true, silent = true }) -- Ctrl+u for scrolling up
vim.keymap.set('n', '<C-n>', '<C-f>', { noremap = true, silent = true }) -- Ctrl+n for scrolling down

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Git
vim.keymap.set('n', '<leader>go', '<cmd>:GitBlameOpenCommitURL<cr>', { desc = '[O]pen commit in GitHub' })
vim.keymap.set('n', '<leader>gc', '<cmd>:GitBlameCopySHA<cr>', { desc = '[C]opy SHA of commit under cursor' })
vim.keymap.set('n', '<leader>gf', '<cmd>:GitBlameOpenFileURL<cr>', { desc = 'Open current [F]ile in GitHub' })
vim.keymap.set('n', '<leader>gu', '<cmd>:GitBlameCopyFileURL<cr>', { desc = 'Copy current file [U]RL' })
vim.keymap.set('n', '<leader>gg', '<cmd>:LazyGit<cr>', { desc = 'Launch Lazy[G]it' })

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Vim-Test
vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', {})
vim.keymap.set('n', '<leader>tT', ':TestFile<CR>', {})
vim.keymap.set('n', '<leader>ta', ':TestSuite<CR>', {})
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', {})
vim.keymap.set('n', '<leader>tg', ':TestVisit<CR>', {})

-- -- Telescope
-- -- See `:help telescope.builtin`
-- local builtin = require 'telescope.builtin'
-- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
-- vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
-- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
-- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
-- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
-- vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
--
-- -- Slightly advanced example of overriding default behavior and theme
-- vim.keymap.set('n', '<leader>/', function()
--   -- You can pass additional configuration to Telescope to change the theme, layout, etc.
--   builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, { desc = '[/] Fuzzily search in current buffer' })
--
-- -- It's also possible to pass additional configuration options.
-- --  See `:help telescope.builtin.live_grep()` for information about particular keys
-- vim.keymap.set('n', '<leader>s/', function()
--   builtin.live_grep {
--     grep_open_files = true,
--     prompt_title = 'Live Grep in Open Files',
--   }
-- end, { desc = '[S]earch [/] in Open Files' })
--
-- -- Shortcut for searching your Neovim configuration files
-- vim.keymap.set('n', '<leader>sn', function()
--   builtin.find_files { cwd = vim.fn.stdpath 'config' }
-- end, { desc = '[S]earch [N]eovim files' })
--
-- -- Autocmd
-- local telescope_builtin = require 'telescope.builtin'
--
-- -- Set key mappings with descriptions
-- vim.keymap.set('n', 'gd', telescope_builtin.lsp_definitions, { desc = '[G]oto [D]efinition' })
-- vim.keymap.set('n', 'gr', telescope_builtin.lsp_references, { desc = '[G]oto [R]eferences' })
-- vim.keymap.set('n', 'gI', telescope_builtin.lsp_implementations, { desc = '[G]oto [I]mplementation' })
-- vim.keymap.set('n', 'gT', telescope_builtin.lsp_type_definitions, { desc = 'Type [D]efinition' })
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })
--
-- -- LSP-specific key mappings
-- vim.keymap.set('n', '<leader>cds', telescope_builtin.lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })
-- vim.keymap.set('n', '<leader>cws', telescope_builtin.lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols' })
vim.keymap.set('n', '<leader>crn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
vim.keymap.set('n', '<leader>cK', vim.lsp.buf.hover, { desc = 'Hover Documentation' })

-- DAP
-- Import necessary modules for debugging
local dap = require 'dap'
local dapui = require 'dapui'

-- DAP-related key mappings
vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'Debug: Step Into' })
vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>dB', function()
  dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Debug: Set Breakpoint' })
vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })

-- rust-tools
-- Keymaps for rust-tools.nvim
local rt = require 'rust-tools'

-- Set up a function to be reused for buffer-specific mappings
local function on_rust_attach(client, bufnr)
  vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, { buffer = bufnr })
  vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group, { buffer = bufnr })
end

-- GitHub Copilot
-- Use Option + Enter to accept GitHub Copilot suggestions
-- C-CR did not work
vim.api.nvim_set_keymap('i', '<C-c>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
vim.g.copilot_no_tab_map = true

return {
  on_rust_attach = on_rust_attach,
}
