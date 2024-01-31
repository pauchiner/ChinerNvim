return {
  {
    'nvimtools/none-ls.nvim',
    name = 'Formatter',
    cond = ChinerNvim.plugins.prettier.enabled,
    event = "BufEnter *.html,*.css,*.json,*.js,*.jsx,*.ts,*.tsx,*.astro",
    config = function ()
      local null_ls = require('null-ls');

      local event = "BufWritePre"
      local async = event == "BufWritePost"
      local group = vim.api.nvim_create_augroup("formatOnSave", {clear = false});

      null_ls.setup {
        on_attach = function (client, bufnr)
          if client.supports_method("textDocument/formatting") then

            --- Format On Save
            vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              group = group,
              callback = function()
                if not ChinerNvim.plugins.prettier.formatOnSave then return end

                vim.lsp.buf.format({ bufnr = bufnr, async = async })
              end,
              desc = "Format On Save",
            })
          end
        end
      }

      --- Format Commands
      vim.api.nvim_create_user_command('Format', function ()
        vim.lsp.buf.format()
      end, {})

      vim.api.nvim_create_user_command('FormatOnSave', function ()
        local formatOnSave = ChinerNvim.plugins.prettier.formatOnSave
        ChinerNvim.plugins.prettier.formatOnSave = not formatOnSave

        if not formatOnSave then
          vim.api.nvim_echo(
            { {"  ", "DoneMsg"}, {"Format On Save Enabled", "ContentMsg"}, },
            false,
            {}
          )
        else
          vim.api.nvim_echo(
            { {"  ", "ErrorMsg"}, {"FormatOnSave Disabled", "ContentMsg"}, },
            false,
            {}
          )
        end
      end, {})
    end
  },
  {
    'MunifTanjim/prettier.nvim',
    name = "Prettier",
    cond = ChinerNvim.plugins.prettier.enabled,
    event = "BufEnter *.html,*.css,*.json,*.js,*.jsx,*.ts,*.tsx,*.astro",
    config = function ()
      local prettier = require("prettier")

      prettier.setup({
        bin = 'prettier',
        filetypes = {
          "html",
          "css",
          "json",
          "astro",
          "typescript",
          "javascript",
          "javascriptreact",
          "typescriptreact",
        },
      })
    end
  },
}
