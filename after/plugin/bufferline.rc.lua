local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = true,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = false,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  clickable = true,

  -- Enables / disables diagnostic symbols
  diagnostics = {
    {enabled = true, icon = ' '}, -- ERROR
    {enabled = false, icon = ' '}, -- WARN
    {enabled = false}, -- INFO
    {enabled = true},  -- HINT
  },

  -- Excludes buffers from the tabline
  exclude_name = {'startup'},

  -- Disable highlighting alternate buffers
  highlight_alternate = false,

  -- Disable highlighting file icons in inactive buffers
  highlight_inactive_file_icons = false,

  -- Enable highlighting visible buffers
  highlight_visible = true,

  -- Enable/disable icons
  icons = true,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '*',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = 'No name',
}
-- Highlights
vim.api.nvim_set_hl(0, 'BufferCurrentSign', {fg = '#b78fda'})
vim.api.nvim_set_hl(0, 'BufferCurrent', { bold = true })
vim.api.nvim_set_hl(0, 'BufferCurrentMod', { bold = true, italic = true })
vim.api.nvim_set_hl(0, 'BufferInactive', { fg = '#6b7095', bg = '#2a2c3d'})
vim.api.nvim_set_hl(0, 'BufferInactiveSign', { fg = '#6b7095' ,bg = '#2a2c3d'})

vim.api.nvim_set_hl(0, 'BufferTabPageFill', {bg = '#2a2c3d', fg = '#2a2c3d'})

-- Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', 'q<Tab>', '<Cmd>BufferClose<CR>', opts)
map('n', 'p<Tab>', '<Cmd>BufferPin<CR>', opts)

--[[
bufferline.setup({
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
    },
    background = {
      fg = '#657b83',
      bg = '#1e2127'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#2a2c3d'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
]]--

