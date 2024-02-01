return {
  "nvimdev/lspsaga.nvim",
  name = "Lspsaga",
  cmd = "Lspsaga",
  event = "LspAttach",
  opts = {
    symbol_in_winbar = {
      enable = ChinerNvim.editor.diagnostics.breadcrumb,
      show_file = false,
    },
    lightbulb = {
      enable = false,
    },
    code_action = {
      show_server_name = true,
      extend_gitsigns = true,
    },
    finder = {
      default = "def+imp+ref",
    },
    ui = {
      border = "rounded",
      title = false,
    },
  },
}
