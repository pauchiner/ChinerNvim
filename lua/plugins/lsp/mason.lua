return {
  "williamboman/mason.nvim",
  name = "Mason",
  cmd = {"Mason", "MasonInstallation"},
  dependencies = {
    {
      name = "MasonConfig",
      "williamboman/mason-lspconfig.nvim"},
    {
      name = "MasonTools",
      "WhoIsSethDaniel/mason-tool-installer.nvim"
    },
  },
  config = function ()
    local status_ok, mason = pcall(require, 'mason')
    if (not status_ok) then return end

    local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
    if (not lspconfig_status) then return end

    local mason_lspconfig_status, mason_lspconfig = pcall(require, 'mason-lspconfig')
    if (not mason_lspconfig_status) then return end

    local mason_tool_installer_status, mason_tool_installer = pcall(require, 'mason-tool-installer')
    if (not mason_tool_installer_status) then return end

    local cmp_lsp_status, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
    if (not cmp_lsp_status) then return end

    local capabilities = cmp_lsp.default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    mason.setup({
      ui = {
        border = "rounded",
        height = 0.8,
        icons = {
          package_installed = "󰸞",
          package_pending = "➜",
          package_uninstalled = ""
        }
      }
    })

    mason_tool_installer.setup {
      ensure_installed = {
        "lua_ls",
        "astro",
        "tsserver",
        "eslint",
        "cssls",
        "cspell",
        "prettier"
      },
    }

    -- Handlers
    mason_lspconfig.setup_handlers {
      -- DEFAULT HANDLER
      function (server_name)
          lspconfig[server_name].setup {}
      end,

      -- CUSTOM HANDLERS

      -- Typescript
      ["tsserver"] = function ()
        lspconfig.tsserver.setup {
          capabilities = capabilities
        }
      end,

      -- Astro
      ["astro"] = function ()
        lspconfig.astro.setup {
          capabilities = capabilities
        }
      end,

      -- Css
      ['cssls'] = function ()
         lspconfig.cssls.setup {
          capabilities = capabilities
        }
      end,

      -- Lua
      ["lua_ls"] = function ()
        lspconfig.lua_ls.setup {
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' },
              },
            },
          },
        }
      end
    }

    -- Custom command to install mason and it's tools
    vim.api.nvim_create_user_command('MasonInstallation', function ()
      print("Installing all the servers, linters and formatters...")
      vim.cmd([[Mason]])
      vim.cmd([[MasonToolsInstall]])
    end, {})
  end
}
