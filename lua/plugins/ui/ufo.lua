return {
  "kevinhwang91/nvim-ufo",
  cond = ChinerNvim.editor.identation.folding,
  name = "Folding",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    { "kevinhwang91/promise-async", name = "PromiseAsync" },
    { "luukvbaal/statuscol.nvim",   name = "StatusColumn" }
  },
  config = function()
    --- Set folding.
    require('ufo').setup({
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    })

    --- Set statuscolumn style.
    local builtin = require('statuscol.builtin')

    require('statuscol').setup({
      relculright = true,
      segments = {
        {
          click = "v:lua.ScSa",
          text = { "%s" }
        },
        {
          text = { builtin.lnumfunc, " " },
          click = "v:lua.ScLa"
        },
        {
          text = { builtin.foldfunc },
          click = "v:lua.ScFa",
        },
        {
          text = { " ", " " },
          condition = { true },
        }
      }
    })
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
  end,
}
