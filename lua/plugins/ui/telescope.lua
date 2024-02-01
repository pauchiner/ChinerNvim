return {
  "nvim-telescope/telescope.nvim",
  name = "Telescope",
  cmd = "Telescope",
  dependencies = {
    {
      "nvim-lua/plenary.nvim",
      name = "Plenary",
    },
  },
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        file_ignore_patterns = {
          "yarn%.lock",
          "gemfile%.lock",
          "package%-lock%.json",
          "pnpm%-lock%.yaml",
          "node_modules",
          "deno%.lock",
          "%.git/.*",
          "%.glb",
          "%.svg",
          "%.png",
          "%.jpeg",
          "%.jpg",
          "%.ico",
          "%.webp",
          "%.avif",
          "%.heic",
          "%.mp3",
          "%.mp4",
          "%.mkv",
          "%.mov",
          "%.wav",
          "%.flv",
          "%.avi",
          "%.webm",
          ".env.*",
          "%.db",
        },
        mappings = {
          i = {
            ["<C-x>"] = false,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<ESC>"] = actions.close,
          },
        },
      },
      layout_strategy = "flex",
      prompt_prefix = "  ",
      git_icons = {
        added = "",
        changed = " 󰏬 ",
        copied = ">",
        deleted = "  ",
        renamed = "➡",
        unmerged = "‡",
        untracked = "?",
      },
      layout_config = {
        prompt_position = "top",
        horizontal = {
          mirror = true,
          preview_cutoff = 100,
          preview_width = 0.5,
        },
        vertical = {
          mirror = true,
          preview_cutoff = 0.4,
        },
        flex = {
          flip_columns = 110,
        },
        height = 0.94,
        width = 0.86,
      },
    })
  end,
}
