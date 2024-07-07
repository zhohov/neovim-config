vim.keymap.set('i', 'jk', '<Esc>')

-- NvimTree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Bufferline
vim.keymap.set('n', '<leader>bl', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})