return {
  "williamboman/mason.nvim",
  name = "Mason",
  cmd = { "Mason", "MasonInstallation" },
  dependencies = {
    {
      name = "MasonConfig",
      "williamboman/mason-lspconfig.nvim",
    },
    {
      name = "MasonTools",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
  },
  config = function()
    local status_ok, mason = pcall(require, "mason")
    if not status_ok then
      return
    end

    local lspconfig_status, lspconfig = pcall(require, "lspconfig")
    if not lspconfig_status then
      return
    end

    local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
    if not mason_lspconfig_status then
      return
    end

    local mason_tool_installer_status, mason_tool_installer = pcall(require, "mason-tool-installer")
    if not mason_tool_installer_status then
      return
    end

    local cmp_lsp_status, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    if not cmp_lsp_status then
      return
    end

    cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

    mason.setup({
      ui = {
        width = 1,
        height = 1,
        icons = {
          package_installed = "󰸞",
          package_pending = "➜",
          package_uninstalled = "",
        },
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        --- Lsp's
        "astro",
        "cssls",
        "lua_ls",
        "tsserver",

        --- Linters
        "eslint_d",
        "biome",

        --- Formatters
        "stylua",
        "prettier",
      },
    })

    mason_lspconfig.setup_handlers({

      --- DEFAULT HANDLER ---
      function(server_name)
        lspconfig[server_name].setup({})
      end,

      --- CUSTOM HANDLERS ---

      -- Lua
      ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })
      end,
    })

    -- Custom command to install mason and it's tools
    vim.api.nvim_create_user_command("MasonInstallation", function()
      vim.notify("Installing all the servers, linters and formatters...", "info", {
        title = "Mason",
      })
      vim.api.nvim_command([[Mason]])
      vim.api.nvim_command([[MasonToolsInstall]])
    end, {})
  end,
}
