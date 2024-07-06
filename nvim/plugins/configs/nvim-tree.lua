return {
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
  