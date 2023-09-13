return {
  "lukas-reineke/indent-blankline.nvim",
  name = "Identline",
  event = { "BufReadPost", "BufNewFile" },
  cond = ChinerNvim.plugins.identation.lines,
  opts = {}
}
