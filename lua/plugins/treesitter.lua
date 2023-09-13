return {
  "nvim-treesitter/nvim-treesitter",
  name = "Treesitter",
  event = "BufReadPre",
  dependencies = {
    {
      name = "Autotag",
      'windwp/nvim-ts-autotag',
    }
  },
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "vue",
        "astro",
        "svelte",
        "gitcommit",
        "graphql",
        "json",
        "json5",
        "lua",
        "markdown",
        "markdown_inline",
        "vim",
      },
      sync_install = false,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true
      },
      autotag = {
        enable = true
      }
    }
  end,
}
