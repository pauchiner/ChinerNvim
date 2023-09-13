return {
  "nvim-tree/nvim-tree.lua",
  name = "Tree",
  cmd = "NvimTreeToggle",
  opts = {
    diagnostics = {
      enable = ChinerNvim.filemanager.diagnostics,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },

    renderer = {
      icons = {
        show = {
          git = ChinerNvim.filemanager.git,
        },
        glyphs = {
          git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "➜",
            untracked = "",
            deleted = "",
            ignored = "◌",
          }
        },
      },
    },

    filters = {
      dotfiles = false,
    },

    view = {
      side = "right",
    },
  }
}
