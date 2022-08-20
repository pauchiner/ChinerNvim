# chiner.nvim

A out-of-the-box neovim configuration for react and web technologies.

- Written in Lua

- Uses packer for plugins
- Easy keboard shortcuts

<img width="1200px" alt="A preview of the neovim configuration" src="images/img1.png">



- [Quick Start](#quickstart)
- [Usage](#Usage)
  - [Keybindings](#keybindings)
  - [Color Scheme](#colorscheme)
- [Plugins](#plugins)
  - [nvim-lspconfig](#nvim-lspconfig)
  - [nvim-lsp-installer](#nvim-lsp-installer)
  - [lspsaga.nvim](#lspsaganvim)
  - [lsp-colors.nvim](#lsp-colorsnvim)
  - [lsp-kind](#lsp-kind)
  - [vim-devicons](#vim-devicons)
  - [vim-startify](#vim-startify)
  - [lualine.nvim](#lualinenvim)
  - [specs.nvim](#specsnvim)
  - [nvim-treesitter](#nvim-treesitter)
  - [cmp-buffer](#cmp-buffer)
  - [nvim-cmp](#nvim-cmp)
  - [nvim-web-devicons](#nvim-web-devicons)
  - [nerdtree](#nerdtree)
  - [nvim-bufferline.lua](#nvim-bufferlinelua)
  - [vim-fugitive](#vim-fugitive)
  - [LuaSnip](#luasnip)
  - [vim-prettier](#vim-prettier)
  - [nvim-ts-autotag](#nvim-ts-autotag)
  - [vim-rhubarb](#vim-rhubarb)
- [Credits](#credits)


# Quick Start

```bash
# Move to .config directory
cd ~/.config
# Back up our current config (Recommended)
cp -r nvim nvim.backup
# Clone repository
git clone https://github.com/pauchiner/chiner.nvim ~/.config/nvim
```
## Installing the plugin manager
This neovim config uses [Packer](https://github.com/wbthomason/packer.nvim) as plugin manager.

Follow the [Quick Install Guide](https://github.com/wbthomason/packer.nvim#quickstart) to install it.

## Keybindings

### Basic key binds

|  Function       |  keybind      |
|-----------------|---------------|
| Leader Key      |      `;`      |

### Buffers

|  Function       |  keybind      |
|-----------------|---------------|
| Buffer Next     |`<tab>`        |
| Buffer Previous |`<Shift> <tab>`|

### Browser

|  Function       |  keybind      |
|-----------------|---------------|
| Toggle Nerdtree | `<leader> l`  |

### Windows


|  Function             |  keybind          |
|-----------------------|-------------------|
| Split vertical        |    `sv`           |
| Split horizontal      |    `ss`           |
| Swap windows          |   `space`         |
| Move to left window   | `sh` or `s <left>`| 
| Move to right window  |`sl` or `s <right>`|  
| Move to the up window |`sk` or `s <up>`   |  
| Move to down window   |`sj` or `s <down>` |  


To see all check [maps.vim](https://github.com/pauchiner/chiner.nvim/blob/main/maps.vim).

## Color Scheme

This configuration uses [One Color Scheme](https://github.com/joshdick/onedark.vim).

# Credits

<img style="border-radius: 50%" width='90px' src="https://avatars.githubusercontent.com/u/1332805?v=4">

This vim workflow is forked from [craftzdog](https://github.com/craftzdog/dotfiles-public) dotfiles. Thanks! 🙏
