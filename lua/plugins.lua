local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  } -- Neosolarized theme
  use 'tjdevries/gruvbuddy.nvim'

  use 'glepnir/lspsaga.nvim'
  use 'kyazdani42/nvim-web-devicons' -- File Icons
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'onsails/lspkind-nvim' -- VSCode like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built in lsp
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, etc via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'windwp/nvim-autopairs' -- auto pair completion for html tags
  use 'windwp/nvim-ts-autotag' -- auto complete parenthesis

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim' -- fuzzy finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- browser for telescope. supports deletion, renaming & moving

  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'goolord/alpha-nvim',
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'eandrju/cellular-automaton.nvim' -- cellular automation animation for when you're bored

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame and browse

  use 'lervag/vimtex' -- Latex
end)
