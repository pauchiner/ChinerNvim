ChinerNvim = {
  editor = {
    colorscheme = "onedark",

    identation = {
      lines = true,        --- Displays identation lines in the code.
      folding = true,      --- Modern folding with markers in the gutter.
    },

    formatter = {
      enabled = true,      --- Format code with :Format, (use Mason to install the formatters).
      formatOnSave = true, --- You can also toggle this with :FormatOnSave.
    },

    git_symbols = {
      enabled = true,
      config = {
        gutter = true,       --- Git decorations in the gutter.
        line_blame = false   --- Virtual text git blame in the current line.
      }
    },

    file_explorer = {
      side = "right",        --- The side of the tree ("right" or "left").
      indent_markers = true, --- Identation on the tree structure.

      diagnostics = {        --- Diagnostic markers on the files.
        highlights = true,   --- Highlight filenames with diagnostics colors.
        icons = false,
      },

      git = {                --- Git markers on the files.
        highlights = false,  --- Highlight with colors git files.
        icons = true,
      }
    },

    diagnostics = {
      gutter = true,         --- Diagnostic symbols in the sign column.
      breadcrumb = false,    --- Show the current symbols in the top bar.
      virtual_text = true,   --- show virtual text (errors, warnings, info) inline messages.
    },
  },

	plugins = {
    --- Feel free to add more plugins and configure them from here.

    --- Github Copilot.
    copilot = {
      enabled = false
    },

    --- Integrate lazygit in the editor, run :Lz or :LazyGit.
    lazygit = {
      enabled = true
    },

    --- Allow to preview in realtime a mardown file.
    markdown_preview = {
      enabled = true,
    },

    --- Allows to use project .prettierrc configs when formatting.
    prettier = {
      enabled = true
    },

    --- Allows to use Ctrl-jkhl to move between neovim and tmux panels.
    tmux = {
      enabled = 'auto',      --- 'auto' detects when tmux is open, you can use also 'on' and 'off'.
    },
	},
}
