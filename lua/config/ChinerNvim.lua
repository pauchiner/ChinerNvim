ChinerNvim = {
  colorscheme = "onedark",

  -- Statusline
  statusline = {
    colorscheme = 'palenight', --- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
	},

  --- File manager (Tree)
  filemanager = {
    side = "right",        --- The side of the tree ("right" or "left")
    indent_markers = true, --- Identation on the tree structure

    diagnostics = {        --- Diagnostic markers on the files
      highlights = true,   --- Highlight filenames with diagnostics colors
      icons = false,
    },

    git = {                --- Git markers on the files
      highlights = false,  --- Highlight with colors git files
      icons = true,
    }
  },

  --- Builtin diagnostics
  lsp = {
		gutter = true,         --- Diagnostic symbols in the sign column
    breadcrumb = false,    --- Show the current symbols in the top bar
    virtual_text = true,   --- show virtual text (errors, warnings, info) inline messages
	},

	plugins = {

    --- Identation like VS Code
    identation = {
      lines = false,        --- Displays identation lines in the code (indent_blankline.nvim)
      folding = true,      --- Modern folding with markers in the gutter and mouse support (nvim-ufo)
    },

    --- Format code with prettier, run :Format or set formatOnSave to true.
    prettier = {
      enabled = true,
      formatOnSave = true,
    },

    --- Allows to use Ctrl-jkhl to move between neovim and tmux
    tmux_navigation = {
      enabled = true,
    },

    --- Git symbols in the UI
    gitsigns = {
      enabled = true,
      config = {
        gutter = true,       --- Git decorations in the gutter
        line_blame = false   --- Virtual text git blame in the current line
      }
    },

    --- Integrate lazygit in the editor, run :Lz or :LazyGit
    lazygit = {
      enabled = true
    },

    --- Github Copilot
    copilot = {
      enabled = true
    },

    --- EXPERIMENTAL FEATURES ---

    --- Allow to preview in realtime a mardown file
    markdown_preview = {
      enabled = true,
      config = {
        mode = "dark"       --- "dark" or "light"
      }
    },

    --- [ CONTAINS BUGS ]
    --- Checks the spelling on the code (only english)
    spellchecker = {
      enabled = false
    },
	},
}
