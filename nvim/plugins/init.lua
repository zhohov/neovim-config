return {
  -- Color scheme
  { 
    "morhetz/gruvbox", 
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme gruvbox]])
    end,
  },

  -- Icons
  { 'kyazdani42/nvim-web-devicons', lazy = true },

  -- Bufferline
  { 
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons', 
    config = function()
      local config = require('plugins.configs.bufferline')

      require('bufferline').setup{
        options = config
      }
    end,
  },

  -- NvimTree
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 
      'kyazdani42/nvim-web-devicons' 
    },
    config = function()
      config = require('plugins.configs.nvim-tree') 
      require('nvim-tree').setup(config)
    end,
  }, 
  
  -- Telescope
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
}
