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
        "bash",
        "regex",
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "vue",
        "astro",
        "svelte",
        "gitcommit",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
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
