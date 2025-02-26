return {
  "pauchiner/pastelnight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("pastelnight").setup({
      transparent = true,
      styles = {
        comments = { italic = true },
        functions = { italic = true },

        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.NvimTreeEndOfBuffer = {
          bg = "NONE",
          fg = "NONE",
        }
        hl.EndOfBuffer = {
          bg = "NONE",
          fg = "NONE",
        }
        hl.SignColumn = {
          bg = c.none,
        }
        hl.FoldColumn = {
          bg = c.none,
        }
      end,
    })

    vim.api.nvim_command([[colorscheme pastelnight]])
  end,
}
