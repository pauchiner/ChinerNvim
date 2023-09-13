return {
  "kevinhwang91/nvim-ufo",
  cond = ChinerNvim.plugins.identation.folding,
  name = "Ufo",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    { "kevinhwang91/promise-async", name = "PromiseAsync" }
  },
  opts = {
    provider_selector = function()
      return {'treesitter', 'indent'}
    end
  }
}
