---
id: color-schemes
title: Color Schemes
sidebar_label: 🎨 Color Schemes
sidebar_position: 3
---

This configuration uses [Palenight Color Scheme](https://github.com/drewtempelmeyer/palenight.vim).

![Palenight Pallete](../../static/img/default-palette.png)

You can change the theme installing a new one and changing inside [/lua/colorscheme.lua](https://github.com/pauchiner/chiner.nvim/blob/2f1745f4a0bb62b4319f1f452e3c085b679dcfdb/lua/colorscheme.lua#L2) this line:

```lua
local colorscheme = "Your new color scheme"
```
## Lualine Theme
Lualine also have his own [themes](https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md), probably your color scheme is already installed.

To change the lualine theme go to the [after/plugin/lualine.rc.lua](https://github.com/pauchiner/chiner.nvim/blob/main/after/plugin/lualine.rc.lua) and change this:
```lua
...
lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'Your new color scheme',
...
```

## Bufferline Colors
The bufferline doens't follow the global colorscheme but you can change the colors in [after/plugin/bufferline.rc.lua](https://github.com/pauchiner/chiner.nvim/blob/main/after/plugin/bufferline.rc.lua):

```lua
...
highlights = {
    indicator_selected = {
      fg = '#b78fda',
    },
    background = {
      fg = '#657b83',
      bg = '#1e2127'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      bg = '#2a2c3d'
    }
  },
...
```
> [See all the highlights options](https://github.com/akinsho/bufferline.nvim/blob/3677aceb9a72630b0613e56516c8f7151b86f95c/doc/bufferline.txt#L726)

