local logo = [[


                   .,
           /\___/\ ((
           \`@_@'/  ))
           {_:Y:.}_//
----------{_}^-'{_}----------

          Everything.

]]

return {
  "goolord/alpha-nvim",
  name = "Alpha",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = vim.split(logo, "\n")

    dashboard.section.buttons.val = {
      dashboard.button("i", " " .. " New file", ":e [No Name] <CR>i"),
      dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("s", " " .. " Language Servers", ":Mason <CR>"),
      dashboard.button("p", " " .. " Plugins", ":Lazy<CR>"),
      dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }

    return dashboard
  end,
  config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)

    --[[
    vim.api.nvim_create_autocmd("User", {
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100) / 100
        dashboard.section.footer.val = "󱐌 Loaded " .. stats.loaded .. " plugins in " .. ms .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
]]
  end,
}
