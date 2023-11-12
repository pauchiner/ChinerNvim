return {
  "lukas-reineke/indent-blankline.nvim",
  name = "Indentline",
  event = { "BufReadPost", "BufNewFile" },
  cond = ChinerNvim.plugins.identation.lines,
  config = function ()
    require("ibl").setup {
      indent = {
        char = "│",
      },
      scope = {
        show_start = false,
        show_end = false,
      }
    };
  end
}
