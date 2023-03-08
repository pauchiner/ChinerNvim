local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set('n', ';l', function()
  vim.cmd(":NvimTreeToggle")
end)
