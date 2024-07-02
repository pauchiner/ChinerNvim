return {
  "kdheepak/lazygit.nvim",
  name = "LazyGit",
  cond = ChinerNvim.plugins.lazygit.enabled,
  cmd = { "Lz", "LazyGit" },
  config = function()
    if ChinerNvim.plugins.lazygit.enabled then
      vim.api.nvim_create_user_command("Lz", function()
        vim.cmd([[LazyGit]])
      end, {})
    end
  end,
}
