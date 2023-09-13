return {
  "mfussenegger/nvim-lint",
  name = "Linter",
  cond = ChinerNvim.plugins.spellchecker.enabled,
  event = "BufEnter",
  config = function ()
    local status, lint = pcall(require, 'lint')
    if (not status) then return end

    lint.linters.cspell.args = { '--gitignore', }

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter','InsertLeavePre' }, {
      callback = function()
        local linters = lint.linters_by_ft[vim.bo.filetype]
        if not linters then
          linters = {}
          lint.linters_by_ft[vim.bo.filetype] = linters
        end
        if not vim.tbl_contains(linters, 'cspell') then
          table.insert(linters, 'cspell')
        end
        lint.try_lint()
      end,
    })
  end
}
