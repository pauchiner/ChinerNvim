-- Put here the name of your colorscheme
local colorscheme = "palenight"
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then return end
