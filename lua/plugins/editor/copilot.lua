return {
  "zbirenbaum/copilot.lua",
  name = "Copilot",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        auto_refresh = true,
        enabled = true,
      },
      suggestion = {
        auto_trigger = true,
        enabled = true,
        keymap = {
          accept = "<S-l>"
        }
      },
    })

    --- hide copilot suggestions when cmp menu is open
    --- to prevent odd behavior/garbled up suggestions

    local status, cmp = pcall(require, "cmp")

    if status then
      cmp.event:on("menu_opened", function()
        vim.b.copilot_suggestion_hidden = true
      end)

      cmp.event:on("menu_closed", function()
        vim.b.copilot_suggestion_hidden = false
      end)
    end

  end
}
