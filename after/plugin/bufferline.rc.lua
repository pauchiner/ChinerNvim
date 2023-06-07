local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

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

-- Hides bufferline on startup
vim.api.nvim_exec([[ autocmd FileType startup set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2 ]], false)

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
