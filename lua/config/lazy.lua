local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins", {
  defaults = { lazy = true },
  checker = { enabled = true },
  change_detection = { enabled = false },
  install = { colorscheme = { ChinerNvim.colorscheme } },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  ui = {
    border = "rounded",
    title = "Plugins",
    icons = {
      lazy = " ",
      loaded = "󰸞",
      not_loaded = "",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    }
  }
})
