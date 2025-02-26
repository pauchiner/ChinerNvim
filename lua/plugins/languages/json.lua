return {
  -- Package Info
  {
    "vuki656/package-info.nvim",
    name = "PackageInfo",
    event = "BufEnter package.json",
    opts = {
      icons = {
        style = {
          outdated = "󰳡 ",
        },
      },
      hide_up_to_date = true,
      hide_unstable_versions = true,
      package_manager = "pnpm",
    },
  },
}
