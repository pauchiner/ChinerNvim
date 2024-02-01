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
  change_detection = { enabled = true, notify = true },
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
    size = {width = 1, height = 1},
    border = "none",
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

vim.api.nvim_create_user_command('Plugins', function ()
 vim.api.nvim_command [[Lazy]]
end, {})
