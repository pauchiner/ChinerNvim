return {
  "neovim/nvim-lspconfig",
  name = "LspConfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    {
      name = "Mason",
      "williamboman/mason.nvim",
    },
    {
      name = "Cmp-Lsp",
      "hrsh7th/cmp-nvim-lsp",
    }
  },
  config = function ()
    -- Virtual text
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        severity_sort = true,
        update_in_insert = false,
        virtual_text = ChinerNvim.lsp.virtual_text and { spacing = 2, prefix = "" } or false,
      }
    )

    -- Gutter
    local signs = ChinerNvim.lsp.gutter
      and { Error = " ", Warn = " ", Hint = "󰌶 ", Info = " " }
      or { Error = "", Warn = "", Hint = "", Info = "" }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end,
}
