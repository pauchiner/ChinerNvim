---
id: prettier
title: Prettier
sidebar_label: 🦋 Prettier
sidebar_position: 4
---

Prettier formatter is enabled by default and it triggers when a file is saved.

## 💱 Configure prettier
By default prettier search a [config file](https://prettier.io/docs/en/configuration.html#configuration-file) in your working directory.

If no has any uses the [default prettier configuration](https://prettier.io/docs/en/configuration.html#basic-configuration).

To override this you can go to the [after/plugins/prettier.rc.lua](https://github.com/pauchiner/chiner.nvim/blob/main/after/plugin/prettier.rc.lua) and pass the cli_options:
```lua
prettier.setup({
  cli_options = {
    arrow_parens = "always",
    bracket_spacing = true,
    bracket_same_line = false,
    embedded_language_formatting = "auto",
    end_of_line = "lf",
    html_whitespace_sensitivity = "css",
    -- jsx_bracket_same_line = false,
    jsx_single_quote = false,
    print_width = 80,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = true,
    single_attribute_per_line = false,
    single_quote = false,
    tab_width = 2,
    trailing_comma = "es5",
    use_tabs = false,
    vue_indent_script_and_style = false,
  },
})
```

## 🚫 Disable format on save
Go to the [/plugin/null-ls.rc.lua](https://github.com/pauchiner/chiner.nvim/blob/main/plugin/null-ls.rc.lua) and remove the code shown below:
```lua
...
local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre"
local async = event == "BufWritePost"

null_ls.setup({
  -- Delete all code inside this function
})
...
```

