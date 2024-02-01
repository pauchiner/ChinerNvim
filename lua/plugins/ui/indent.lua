return {
  "lukas-reineke/indent-blankline.nvim",
  name = "Indentation",
  event = { "BufReadPost", "BufNewFile" },
  cond = ChinerNvim.editor.identation.lines,
  config = function()
    require("ibl").setup({
      indent = {
        char = "│",
      },
      scope = {
        show_start = false,
        show_end = false,
      },
    })
  end,
}
