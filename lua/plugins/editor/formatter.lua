return {
  'mhartington/formatter.nvim',
  name = "Formatter",
  cond = ChinerNvim.plugins.prettier.enabled,
  event = "BufEnter *.html,*.css,*.json,*.js,*.jsx,*.ts,*.tsx",
  config =  function ()
    require("formatter").setup {
      filetype = {
        html = {
          require("formatter.filetypes.html").prettier,
        },
        css = {
          require("formatter.filetypes.css").prettier,
        },
        json = {
          require("formatter.filetypes.json").prettier,
        },
        javascript = {
          require("formatter.filetypes.javascript").prettier,
        },
        javascriptreact = {
          require("formatter.filetypes.javascriptreact").prettier,
        },
        typescript = {
          require("formatter.filetypes.typescript").prettier,
        },
        typescriptreact = {
          require("formatter.filetypes.typescriptreact").prettier,
        },
      },
    }

    if (ChinerNvim.plugins.prettier.formatOnSave) then
      vim.api.nvim_create_autocmd({"BufWritePost"}, {
        pattern = {"*.html", "*.css", "*.json", "*.js", "*.jsx", "*.ts", "*.tsx"},
        command = "FormatWriteLock",
      })
    end
  end
}
