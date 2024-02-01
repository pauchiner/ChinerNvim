return {
  'lewis6991/gitsigns.nvim',
  name = "Git Symbols",
  event = { "BufReadPre", "BufNewFile" },
  cond = ChinerNvim.editor.git_symbols.enabled,
  opts = {
    signs = {
      add          = { text = '│' },
      untracked    = { text = '│' },
    },
    signcolumn = ChinerNvim.editor.git_symbols.gutter,
    current_line_blame = ChinerNvim.editor.git_symbols.line_blame,
  }
}
