return {
  {
    "iamcco/markdown-preview.nvim",
    cond = ChinerNvim.plugins.markdown_preview.enabled,
    name = "MarkdownPreview",
    event = { "BufReadPre *.md", "BufNewFile *.md" },
    build = "cd app && yarn install",
    config = function()
      local opts = {
        mkdp_page_title = "${name}",
      }

      for k, v in pairs(opts) do
        vim.g[k] = v
      end

      --- Autocommand to show to the user that can preview the markdown file
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = "*.md",
        callback = function()
          vim.notify("run :MarkdownPreview to start the live preview of the file.", "info", {
            title = "Markdown",
            timeout = 300,
            icon = "",
          })
        end,
      })
    end,
  },
}
