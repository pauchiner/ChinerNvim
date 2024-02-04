return {
  "akinsho/bufferline.nvim",
  name = "Bufferline",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    options = {
      always_show_bufferline = true,
      color_icons = true,
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      enforce_regular_tabs = false,
      separator_style = "thin",
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
    highlights = {
      background = {
        fg = "#657b83",
        bg = "#2a2c3d",
      },
    },
  },
}
