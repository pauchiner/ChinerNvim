return {
  "nvim-tree/nvim-tree.lua",
  name = "Tree",
  cmd = "NvimTreeToggle",
  opts = {
    view = {
      signcolumn = "auto",
      side = ChinerNvim.filemanager.side,
    },

    renderer = {
      root_folder_label = function(path)
        return vim.fn.fnamemodify(path, ":t")
      end,
      group_empty = true,

      highlight_git = ChinerNvim.filemanager.git.highlights,
      highlight_diagnostics = ChinerNvim.filemanager.diagnostics.highlights,

      indent_markers = {
        enable = ChinerNvim.filemanager.indent_markers,
        icons = { corner = "╰", }
      },

      icons = {
        show = {
          git = ChinerNvim.filemanager.git.icons,
          folder_arrow = true,
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
          },
          folder = {
            default = "",
            open = "",
            empty = "",
            empty_open = ""
          }
        },
        diagnostics_placement = "after"
      },
    },

    diagnostics = {
      enable = ChinerNvim.filemanager.diagnostics.icons,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
  }
}
