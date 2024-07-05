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
}