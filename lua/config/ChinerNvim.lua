ChinerNvim = {
  colorscheme = "onedark",

  -- Statusline
  statusline = {
    colorscheme = 'palenight', -- To see all avaliable go to https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
	},

  -- File manager (Tree)
  filemanager = {
    diagnostics = true, -- Diagnostic markers on the files
    git = true, -- Git markers on the files
  },

  -- Builtin diagnostics
  lsp = {
		gutter = true, -- Diagnostic symbols in the sign column
    breadcrumb = false, -- Show the current symbols in the top bar
    virtual_text = true, -- show virtual text (errors, warnings, info) inline messages
	},

	plugins = {

    -- Identation like VS Code
    identation = {
      lines = true, -- Displays identation lines in the code (indent_blankline.nvim)
      folding = true, -- Modern folding with markers in the gutter and mouse support (nvim-ufo)
    },

    -- Format code with prettier, run :Format or set formatOnSave to true.
    prettier = {
      enabled = true,
      formatOnSave = true,
    },

    -- Allows to use Ctrl-jkhl to move between neovim and tmux
    tmux_navigation = {
      enabled = false,
    },

    -- Git symbols in the UI
    gitsigns = {
      enabled = true,
      config = {
        gutter = true, -- Git decorations in the gutter
        line_blame = false -- Virtual text git blame in the current line
      }
    },

    -- Integrate lazygit in the editor, run :Lz or :LazyGit
    lazygit = {
      enabled = true
    },

    --- EXPERIMENTAL FEATURES ---

    -- Checks the spelling on the code (only english)
    spellchecker = {
      enabled = false
    },

    -- Allow to preview in realtime a mardown file
    markdown_preview = {
      enabled = true,
      config = {
        mode = "dark" -- Color mode: "dark" or "light"
      }
    },

	},
}