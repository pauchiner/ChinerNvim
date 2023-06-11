local status, theme = pcall(require, "onedark")
if(not status) then return end

theme.setup({
  transparent = true,
  term_colors = true
})

theme.load()
