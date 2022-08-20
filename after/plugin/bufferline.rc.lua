local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    separator_style = 'Thin',
    always_show_bufferline = true,
    enforce_regular_tabs = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    indicator_selected = {
      guifg = '#e95678',
    },
    background = {
      guifg = '#657b83',
      guibg = '#1e2127'
    },
    buffer_selected = {
      guifg = '#fdf6e3',
      gui = "bold",
    },
    fill = {
      guibg = '#282c34'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
