return {
  "nvim-tree/nvim-web-devicons",
  name = "Icons",
  main = "nvim-web-devicons",
  opts = {
    override_by_filename = {
      [".prettierignore"] = {
        icon = "",
        color = "#ff5454",
        name = "prettierignore",
      },
      [".prettierrc.cjs"] = {
        icon = "",
        color = "#ff5454",
        name = "prettier",
      },
      [".prettierrc.json"] = {
        icon = "",
        color = "#ff5454",
        name = "prettier",
      },
      [".eslintrc.cjs"] = {
        icon = "󰱺",
        color = "#5b34eb",
        name = "eslint",
      },
      [".eslintrc.json"] = {
        icon = "󰱺",
        color = "#5b34eb",
        name = "eslint",
      },
      ["tsconfig.json"] = {
        icon = "󰛦",
        color = "#3478C0",
        name = "typescript",
      },
      ["astro.config.ts"] = {
        icon = "",
        color = "#EF8547",
        name = "astro",
      },
      ["astro.config.mjs"] = {
        icon = "",
        color = "#EF8547",
        name = "astro",
      },
      ["pnpm-lock.yaml"] = {
        icon = "",
        color = "#7d7d7d",
        name = "pnpm",
      },
      ["vitest.config.ts"] = {
        icon = "󰙨",
        color = "#edb21c",
        name = "vitest",
      },
      ["yarn.lock"] = {
        icon = "",
        color = "#2c8ebb",
        name = "yarn",
      },
      ["wrangler.toml"] = {
        icon = "",
        color = "#DC812D",
        name = "wrangler",
      },
      ["drizzle.config.ts"] = {
        icon = "󰆼",
        color = "#D4F753",
        name = "drizzle",
      },
      [".env.example"] = {
        icon = "",
        color = "#edb21c",
        name = "env",
      },
      ["vercel.json"] = {
        icon = "󰔶",
        color = "#ffffff",
        name = "vercel",
      },
    },
    override_by_extension = {
      ["d.ts"] = {
        icon = "",
        color = "#48A049",
        name = "typescript",
      },
    },
  },
}
