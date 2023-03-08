local status, startup = pcall(require, "startup")
if (not status) then return end

startup.setup({ theme = 'startify' })
