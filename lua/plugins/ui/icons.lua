return {
  "nvim-tree/nvim-web-devicons",
  name = "Icons",
  main = "nvim-web-devicons",
  opts = {
    override_by_filename = {
      [".prettierrc.cjs"] = {
        icon = "󰉨",
        color = "#ff5454",
        name = "prettier"
      },
      [".prettierrc.json"] = {
        icon = "󰉨",
        color = "#ff5454",
        name = "prettier"
      },
      [".eslintrc.cjs"] = {
        icon = "󰱺",
        color = "#5b34eb",
        name = "eslint"
      },
      [".eslintrc.json"] = {
        icon = "󰱺",
        color = "#5b34eb",
        name = "eslint"
      },
      ["tsconfig.json"] = {
        icon = "󰛦",
        color = "#3478C0",
        name = "typescript"
      },
      ["astro.config.mjs"] = {
        icon = "",
        color = "#EF8547",
        name = "astro"
      },
      ["yarn.lock"] = {
        icon = "",
        color = "#2c8ebb",
        name = "yarn"
      },
      ["env.d.ts"] = {
        icon = "",
        color = "#48A049",
        name = "typescript"
      },
    },
    override_by_extension = {
      ["d.ts"] = {
        icon = "",
        color = "#48A049",
        name = "typescript"
      },
      astro = {
        icon = "",
        color = "#EF8547",
        name = "astro"
      },
    }
  }
}
