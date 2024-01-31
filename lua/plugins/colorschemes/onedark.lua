return  {
  "navarasu/onedark.nvim",
  name = "Colorscheme",
  lazy = false,
  priority = 1000,
  config = function()
    local status, theme = pcall(require, "onedark")
    if (not status) then return end

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

        -- Messages
        ["InfoMsg"] = {fg = "$blue", fmt = "bold"},
        ["DoneMsg"] = {fg = "$green", fmt = "bold"},
        ["ErrorMsg"] = {fg = "$red", fmt = "bold"},
        ["ContentMsg"] = {fg = "$fg", fmt = "italic"},

        -- Fold Column
        ["FoldColumn"] = { fg = "$grey", bg = '$bg0'},

        --- Tree ---
        ["NvimTreeRootFolder"] = { fg = "$purple"},
        ["NvimTreeIndentMarker"] = { fg = "$grey"},
        ["NvimTreeFolderArrowClosed"] = { fg = "$grey"},
        -- Folders
        ["NvimTreeFolderName"] = { fg = "#cccccc"},
        ["NvimTreeEmptyFolderName"] = { fg = "#cccccc"},
        ["NvimTreeOpenedFolderName"] = { fg = "#b78fda", fmt = 'bold'},
        ["NvimTreeFolderIcon"] = { fg = "#b78fda"},

        -- Lazy
        ["LazyH1"] = {fg = "$bg0", bg = "$purple"},
        ["LazyNoCond"] = {fg = "$grey"},
        ["LazySpecial"] = {fg = "$purple"},

        -- Mason
        ["MasonHeader"] = {fg = "$bg0", bg = "$purple"},
        ["MasonHighlight"] = {fg = "$purple"},
        ["MasonHighlightBlockBold"] = {fg = "$bg0", bg = "$purple"},
        ["MasonHighlightBlock"] = {fg = "$purple", bg = "$purple"},

        -- Package Info
        ["PackageInfoOutdatedVersion"] = {fg = '$grey', fmt = 'italic'},

      }
    })

    theme.load()
  end
}
