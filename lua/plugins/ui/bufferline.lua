return {
  "akinsho/bufferline.nvim",
  name = "Bufferline",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    options = {
      always_show_bufferline = true,
      color_icons = true,
      diagnostics = 'nvim_lsp',
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      enforce_regular_tabs = false,
      separator_style = 'thin',
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
    highlights = {
      indicator_selected = {
        fg = '#b78fda',
        bg = '#2a2c3d'
      },
      background = {
        fg = '#657b83',
        bg = '#2a2c3d'
      },
      buffer_selected = {
        fg = '#fdf6e3',
        bold = true,
      },
      duplicate = {
        bg = '#2a2c3d'
      },
      separator = {
        fg = '#2a2c3d',
        bg = '#2a2c3d'
      },
      hint = {
        bg = '#2a2c3d'
      },
      hint_diagnostic = {
        fg = "#ff92df",
        bg = "#2a2c3d"
      },
      error = {
        bg = '#2a2c3d'
      },
      error_diagnostic = {
        fg = "#ff5555",
        bg = "#2a2c3d"
      },
      warning = {
        bg = '#2a2c3d'
      },
      warning_diagnostic = {
        fg = "#ffcb6b",
        bg = "#2a2c3d"
      },
      info = {
        bg = '#2a2c3d'
      },
      info_diagnostic = {
        fg = "#8be9fd",
        bg = "#2a2c3d"
      },
      modified = {
        bg = "#2a2c3d"
      },
      modified_visible = {
        bg = "#2a2c3d"
      },
      modified_selected = {
        bg = "#2a2c3d"
      },
      fill = {
        fg = '#2a2c3d',
        bg = '#2a2c3d'
      }
    }
  }
}
