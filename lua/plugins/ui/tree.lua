return {
  "nvim-tree/nvim-tree.lua",
  name = "File Explorer",
  cmd = "NvimTreeToggle",
  opts = {
    view = {
      signcolumn = "auto",
      side = ChinerNvim.editor.file_explorer.side,
    },

    renderer = {
      root_folder_label = function(path)
        return vim.fn.fnamemodify(path, ":t")
      end,
      group_empty = true,

      highlight_git = ChinerNvim.editor.file_explorer.git.highlights,
      highlight_diagnostics = ChinerNvim.editor.file_explorer.diagnostics.highlights,

      indent_markers = {
        enable = ChinerNvim.editor.file_explorer.indent_markers,
        icons = { corner = "╰", }
      },

      icons = {
        show = {
          git = ChinerNvim.editor.file_explorer.git.icons,
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
            default = "󰉋 ",
            open = "󰝰 ",
            empty = "󰉖 ",
            empty_open = "󰷏 "
          }
        },
        diagnostics_placement = "before",
        git_placement = "after",
      },
    },

    diagnostics = {
      enable = ChinerNvim.editor.file_explorer.diagnostics.icons,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
    },
  }
}
