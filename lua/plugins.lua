local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

if(not packer_exists) then
  ensure_packer();
end

local status, packer = pcall(require, "packer")
if (not status) then
  print("Unexpected error installing packer =(")
  print("Try the manual installation: https://github.com/wbthomason/packer.nvim#quickstart")
  return
end

packer.init({
  display = {
    open_fn = function()
      local result, win, buf = require('packer.util').float {
      }
      vim.api.nvim_win_set_option(win, 'winhighlight', 'NormalFloat:Normal')
      return result, win, buf
    end,
  },
})

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    --Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
    }

    use 'drewtempelmeyer/palenight.vim' -- Color Theme
    use 'startup-nvim/startup.nvim' -- Start Screen
    use 'kyazdani42/nvim-tree.lua' -- Lua NerdTree
    use 'nvim-lualine/lualine.nvim' -- Statusline
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'neovim/nvim-lspconfig' -- LSP
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'L3MON4D3/LuaSnip' -- Lua Snippets
    use 'kyazdani42/nvim-web-devicons' -- File icons
    use 'christoomey/vim-tmux-navigator' -- Blends vim navigation and tmux navigation
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'windwp/nvim-ts-autotag' -- Closes automatic html tags
    use 'windwp/nvim-autopairs' -- Closes automatic brackets and others
    use 'norcalli/nvim-colorizer.lua'
    use 'akinsho/nvim-bufferline.lua'
    use 'lewis6991/gitsigns.nvim'

  if not packer_exists then
    packer.sync()
    print("\nNow when all the plugins are installed, reload nvim to start with your new configuration.")
  end
end)
