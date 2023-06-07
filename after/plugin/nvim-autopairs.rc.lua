local autopairs_status, autopairs = pcall(require, 'nvim-autopairs')
local autotag_status, autotag = pcall(require, 'nvim-ts-autotag')

if(not autopairs_status) then return end

autopairs.setup{}

if(not autotag_status) then return end

autotag.setup {
  autotag = {
    enable = true
  }
}
