vim.keymap.set('i', 'jk', '<Esc>')

-- NvimTree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Bufferline
vim.keymap.set('n', '<leader>bl', ':BufferLinePick<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')