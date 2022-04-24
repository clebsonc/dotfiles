local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer was not found")
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}


-- Install your plugins here
return require('packer').startup(function(use)
    use 'folke/tokyonight.nvim'                            -- colorschme tokyonight
    use "lunarvim/colorschemes"                            -- Lunar vim Colorscheme
    use {'dracula/vim', as = 'dracula'}                    -- Dracula Colorscheme
    use 'wbthomason/packer.nvim'                           -- Packer can manage itsel
    use "nvim-lua/popup.nvim"                              -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"                            -- Useful lua functions used by lots of plugins. gx: telescope, null-ls
    use 'kyazdani42/nvim-web-devicons'                     -- Icons for lua line, telescope and other stuff to work properly.
    use 'kyazdani42/nvim-tree.lua'                         -- NVim Tree Explorer
    use "lewis6991/gitsigns.nvim"                          -- Show git symbols for modifications.
    use "numToStr/Comment.nvim"                            -- Comment Automatically with keymap gcc


    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('user.pconfigs.lualine')
        end
    }

    -- cmp plugins
    use "hrsh7th/nvim-cmp"                                 -- The completion plugin
    use "hrsh7th/cmp-buffer"                               -- buffer completions
    use "hrsh7th/cmp-path"                                 -- path completions
    use "hrsh7th/cmp-cmdline"                              -- cmdline completions
    use "saadparwaiz1/cmp_luasnip"                         -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- snippets
    use "L3MON4D3/LuaSnip"                                 -- snippet engine
    use "rafamadriz/friendly-snippets"                     -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig"                            -- enable LSP
    use "williamboman/nvim-lsp-installer"                  -- simple to use language server installer

    -- Telescope
    -- install finder: `https://github.com/sharkdp/fd#installation`
    -- check if everything from telescope is ok by executing the command: checkhealth telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim'},
            { 'nvim-telescope/telescope-live-grep-raw.nvim' },
        },
    }

    -- Install nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- use "p00f/nvim-ts-rainbow"
    use "windwp/nvim-autopairs"                            -- Automatically close symbols () [] {} " ' """.
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    use "jose-elias-alvarez/null-ls.nvim"                  -- Enable using external tools such as pylint, flake8 anda black

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
