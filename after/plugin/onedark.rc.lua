local status, theme = pcall(require, "onedark")
if(not status) then return end

theme.setup({
  term_colors = true,
  colors = {
		bg0 = "#2a2c3d",
		bg_d = "#2a2c3d",
		fg = "#f8f8f2",
    black = "#21222c",
		purple = "#ff92df",
		green = "#69ff94",
		orange = "#ff8147",
		blue = "#82aaff",
		yellow = "#ffcb6b",
		cyan = "#8be9fd",
		red = "#ff5555",
		grey = "#545454",
  },
  highlights = {
    ["@tag.attribute"] = {fg = '$orange', fmt = 'italic'},
    ["@tag.delimiter"] = {fg = '$purple'},
    ["@constructor"] = {fg = '$yellow', fmt = 'italic'},
  }
})

theme.load()
