return {
  "pauchiner/pastelnight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.api.nvim_command([[colorscheme pastelnight]])
  end,
}
