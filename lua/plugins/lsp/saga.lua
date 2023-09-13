return {
  "nvimdev/lspsaga.nvim",
  name = "Lspsaga",
  cmd = "Lspsaga",
  event = 'LspAttach',
  opts = {
    symbol_in_winbar = {
      enable = ChinerNvim.lsp.breadcrumb,
      show_file = false
    },
    lightbulb = {
      enable = false,
    },
    ui = {
      border = "rounded"
    }
  }
}
