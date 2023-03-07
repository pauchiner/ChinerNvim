local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'palenight',
    section_separators = { "", "" },
    component_separators = { "│", "│" },
    disabled_filetypes = { 'packer', 'NvimTree' }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      { 'branch' },
      {
        "diff",
        colored = true,
        diff_color = {
          added    = { fg = "#28A745" },
          modified = { fg = "#DBAB09" },
          removed  = { fg = "#D73A49" }
        },
        symbols = {
          added    = " ",
          modified = " ",
          removed  = " "
        }
      }
    },
    lualine_x = {
      { 'diagnostics', sources = { "nvim_diagnostic" }, symbols = { error = ' ', warn = ' ', info = ' ',
        hint = ' ' } },
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  tabline = {},
  extensions = { 'fugitive' }
}
