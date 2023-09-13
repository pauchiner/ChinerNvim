return {
  {
    "iamcco/markdown-preview.nvim",
    cond = ChinerNvim.plugins.markdown_preview.enabled,
    name = "MarkdownPreview",
    event = { "BufReadPre *.md", "BufNewFile *.md" },
    build = "cd app && yarn install",
    config = function ()
      local opts = {
        mkdp_theme = ChinerNvim.plugins.markdown_preview.config.mode,
        mkdp_page_title = "${name}"
      }

      for k, v in pairs(opts) do
        vim.g[k] = v
      end

      --- Autocommand to show to the user that can preview the markdown file
      vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
        pattern = "*.md",
        callback = function ()
          local markdown = function ()
            vim.api.nvim_echo(
              { {"  ", "InfoMsg"}, {"run :MarkdownPreview to start the live preview of the file.", "ContentMsg"}, },
              false,
              {}
            )
          end

          local timer = vim.loop.new_timer()
          timer:start(500, 0, vim.schedule_wrap(markdown))
        end
      })
    end
  }
}
