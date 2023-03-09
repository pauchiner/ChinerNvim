---
id: keybindings
title: Keybindings
sidebar_label: ⌨️ Keybindings
sidebar_position: 1
---

### Buffers

|  Function       |  keybind      |
|-----------------|---------------|
| Buffer Next     |`<tab>`        |
| Buffer Previous |`<Shift> <tab>`|
> Change buffers keybindings [here](https://github.com/pauchiner/chiner.nvim/blob/2da1a326eec18cf105a8d24d18d1c657cfe33c88/after/plugin/bufferline.rc.lua#L35)

### Browser

|  Function            |  keybind      |
|----------------------|---------------|
| Toggle Nerdtree      |     `;l`      |
| Toggle quick find    |     `;f`      |
| Show lsp diagnostics |     `;e`      |
| Show buffers list    |     `\\`      |
| Command help list.   |     `;t`
> Change Browser keybindings [here](https://github.com/pauchiner/chiner.nvim/blob/2da1a326eec18cf105a8d24d18d1c657cfe33c88/after/plugin/telescope.rc.lua#L54)

### Windows


|  Function             |  keybind          |
|-----------------------|-------------------|
| Split vertical        |    `sv`           |
| Split horizontal      |    `ss`           |
| Move to left window   | `sh` or `s <left>`| 
| Move to right window  |`sl` or `s <right>`|  
| Move to the up window |`sk` or `s <up>`   |  
| Resize to left   |`sj` or `s <down>` |  
| Move to left window   | `sh` or `s <left>`| 
| Move to right window  |`sl` or `s <right>`|  
| Move to the up window |`sk` or `s <up>`   |  
| Move to down window   |`sj` or `s <down>` |
> Change Windows keybindings [here](https://github.com/pauchiner/chiner.nvim/blob/2da1a326eec18cf105a8d24d18d1c657cfe33c88/lua/maps.lua#L17)

### Language Server Protocol

|  Function                    |  keybind         |
|------------------------------|------------------|
| Rename                       |   `gr`           |  
| Hover doc                    |   `K`            |
| Lsp finder                   |   `gd`           |
| Peek Definition              |   `gp`           | 
| Jump to next diagnostic      |   `<Ctrl> j`     |
> Change LSP keybindings [here](https://github.com/pauchiner/chiner.nvim/blob/main/plugin/lspsaga.rc.lua)
