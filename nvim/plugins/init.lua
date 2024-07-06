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

  -- Tabline
  { 
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons', 
    config = function()
      local config = require('plugins.opts.bufferline')

      require('bufferline').setup{
        options = config
      }
    end,
  },

  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 
      'kyazdani42/nvim-web-devicons' 
    },
    config = function()
      config = require('plugins.opts.nvim-tree') 
      require('nvim-tree').setup(config)
    end,
  },
}
