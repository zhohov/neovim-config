-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: nvim-tree
-- url: https://github.com/kyazdani42/nvim-tree.lua


return {
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 
      'kyazdani42/nvim-web-devicons' 
    },
    config = function()
      local status_ok, nvim_tree = pcall(require, 'nvim-tree')
      if not status_ok then
        return
      end

      nvim_tree.setup{
        sort = {
          sorter = "name",
          folders_first = true,
          files_first = false,
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
          icons = {
            glyphs = {
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "UM",
                renamed = "➜",
                untracked = "U",
                deleted = "D",
                ignored = "I",
              },
            },
          },
        },
        filters = {
          dotfiles = true,
        },
        git = {
          enable = true,
          ignore = true,
          show_on_dirs = true,
          show_on_open_dirs = true,
          timeout = 400,
        },
      }
    end,
  },
}