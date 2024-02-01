local function cond()
  local condition = ChinerNvim.plugins.tmux.enabled

  --- Checks if nvim is running in a tmux session
  if condition == "auto" and os.getenv("TMUX") ~= nil then
    return true
  end

  --- Manual condition
  if condition == "on" then
    return true
  end
  return false
end

return {
  "christoomey/vim-tmux-navigator",
  name = "TmuxNavigation",
  cond = cond(),
  event = "BufEnter",
}
