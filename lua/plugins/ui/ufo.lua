return {
  "kevinhwang91/nvim-ufo",
  cond = ChinerNvim.editor.identation.folding,
  name = "Folding",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    { "kevinhwang91/promise-async", name = "PromiseAsync" }
  },
  opts = {
    provider_selector = function()
      return {'treesitter', 'indent'}
    end
  },
  config = function ()
    --- Displays correct folding markers
    vim.opt.statuscolumn = [[%s%=%l %#FoldColumn#%{foldlevel(v:lnum) > foldlevel(v:lnum - 1)? foldclosed(v:lnum) == -1? "": "": foldlevel(v:lnum) == 0? " ": " "} ]]
  end
}
