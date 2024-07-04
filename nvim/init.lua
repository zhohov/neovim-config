-- Set line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Disable swapfile
vim.opt.swapfile = false

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Map 'jk' to escape in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Plugin management using 'packer.nvim'
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Color schema
  use 'morhetz/gruvbox'
  
  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
end)

-- Set color scheme
vim.cmd('colorscheme gruvbox')

-- Keybinding to toggle nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Automatically open nvim-tree when starting Neovim without arguments
vim.cmd([[
  autocmd VimEnter * if !argc() | NvimTreeOpen | wincmd p | endif
]])

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

