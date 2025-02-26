return {
  {
    "davidmh/mdx.nvim",
    name = "MDX",
    event = { "BufReadPre *.mdx", "BufNewFile *.mdx" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      name = "Treesitter",
    },
    config = true,
  },
}
