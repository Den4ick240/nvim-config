-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        fn.system({'apt-get', 'install', 'ripgrep'})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'} }
    }

    use { 'catppuccin/nvim', as = 'catpuccin'}
    use { 'sainnhe/everforest', as = 'everforest' }
    use('lunarvim/colorschemes')

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {
                'williamboman/mason.nvim',
                run = function() 
                    pcall(vim.cmd, 'MasonUpdate')
                end
            },           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'L3MON4D3/LuaSnip'},             -- Required
        }
    }

    use('lervag/vimtex')

    use ('tpope/vim-commentary')

    use ('rbgrouleff/bclose.vim')

    use ('francoiscabrol/ranger.vim')

    use ('windwp/nvim-autopairs')

    use ('windwp/nvim-ts-autotag')

    --use ('aveplen/ruscmd.nvim')

    use ('udalov/kotlin-vim')

    use('tpope/vim-surround')

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })


    use 'sheodox/projectlaunch.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
