return {
  'lewis6991/gitsigns.nvim',
  name = "Gitsigns",
  event = { "BufReadPre", "BufNewFile" },
  cond = ChinerNvim.plugins.gitsigns.enabled,
  opts = {
    signs = {
      add          = { text = '│' },
      untracked    = { text = '│' },
    },
    signcolumn = ChinerNvim.plugins.gitsigns.gutter,
    current_line_blame = ChinerNvim.plugins.gitsigns.line_blame,
  }
}
