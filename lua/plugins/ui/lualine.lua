local package_status = function ()
  local package_info_status, package = pcall(require, 'package-info')
  if (not package_info_status) then return end

  return package.get_status()
end

return {
  "nvim-lualine/lualine.nvim",
  name = "Statusline",
  main = "lualine",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    options = {
      icons_enabled = true,
      theme = ChinerNvim.statusline.colorscheme,
      component_separators = '|',
      section_separators = { left = '', right = '' },
      globalstatus = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = {
        {
          'diff',
          colored = true,
          diff_color = {
            added    = { fg = "#28A745" },
            modified = { fg = "#DBAB09" },
            removed  = { fg = "#D73A49" }
          },
          symbols = {
            added    = " ",
            modified = " ",
            removed  = " "
          }
        }
      },
      lualine_d = { package_status },

      lualine_x = {
        {
          'diagnostics',
          symbols = {
            error = ' ',
            warn = ' ',
            info = ' ',
            hint = ' '
          }
        },
      },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
  }
}
