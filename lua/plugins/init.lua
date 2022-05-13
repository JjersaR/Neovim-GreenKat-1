return require('packer').startup(function()
    -- My plugins here
    -- Packer can manage itself
    
    -- Tema Tokyonight
    use 'folke/tokyonight.nvim' 
    -- tema catppuccin
    use({"catppuccin/nvim", as = "catppuccin"})
    -- tema nord
    use 'shaunsingh/nord.nvim'
    -- tema tokyodark
    use 'tiagovla/tokyodark.nvim'
    -- tema neon
    use "rafamadriz/neon"
    -- tema blue-moon
    use 'kyazdani42/blue-moon'
    --tema nightfox
    use "EdenEast/nightfox.nvim"

    -- la linea de abajo
    use {
        use 'tamton-aquib/staline.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- la sintaxis
    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

    -- los buffers
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    -- navegador de archivos
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons' -- optional, for file icon
        }
        --    config = function() require'nvim-tree'.setup {} end
    }

    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- LSP y autocompletado
    require("nvim-lsp-installer").setup {}
    require'lspconfig'.pyright.setup {}
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use {'tami5/lspsaga.nvim'}
    use "jose-elias-alvarez/null-ls.nvim"

    -- para Hob
    use {
        'phaazon/hop.nvim',
        branch = 'v1', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup {keys = 'etovxqpdygfblzhckisuran'}
        end
    }

    -- para refactoring
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"}
        }
    }

    -- Spectre
    use 'windwp/nvim-spectre'
    use "nvim-lua/plenary.nvim"

    -- para java
    use 'mfussenegger/nvim-jdtls'

    -- autopairs
    use {'windwp/nvim-autopairs'}

    -- which-key
    use {'folke/which-key.nvim'}

    -- iconos en cmp
    use 'onsails/lspkind-nvim'

    -- terminal
    use {"akinsho/toggleterm.nvim"}

    -- indentado
    use "lukas-reineke/indent-blankline.nvim"

    -- ver qué se modificó
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('gitsigns').setup {current_line_blame = true}
        end
    }
    -- pantalla de inicio
    use 'glepnir/dashboard-nvim'

    -- ranger
    use 'kevinhwang91/rnvimr'

    -- buffers
    use 'toppair/reach.nvim'

    -- scroll en pantalla
    use 'karb94/neoscroll.nvim'

    -- para comentar lineas
    use "terrortylor/nvim-comment"

    -- renombrar
    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    -- symbols-outline
    use 'simrat39/symbols-outline.nvim'

    -- lens
    use 'camspiers/animate.vim'
    use 'camspiers/lens.vim'

    -- gitsigns.nvim
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }

    --Minimap
--    use {
--        "thugcee/nvim-map-to-lua",
--        ft = "lua",
--       config = function ()
--            require("map-to-lua").setup {
--                default_formatter = "mapper"
--            }
--            vim.api.nvim_set_keymap("n", "<leader>cm", '<cmd>lua require("map-to-lua").convert_line()<cr>', { })
--        end
--    }


    -- project.nvim
    --     local M = {}

    -- ---@class ProjectOptions
    -- M.defaults = {
    --   -- Manual mode doesn't automatically change your root directory, so you have
    --   -- the option to manually do so using `:ProjectRoot` command.
    --   manual_mode = false,

    --   -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    --   -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    --   -- order matters: if one is not detected, the other is used as fallback. You
    --   -- can also delete or rearangne the detection methods.
    --   detection_methods = { "lsp", "pattern" },

    --   -- All the patterns used to detect root dir, when **"pattern"** is in
    --   -- detection_methods
    --   patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

    --   -- Table of lsp clients to ignore by name
    --   -- eg: { "efm", ... }
    --   ignore_lsp = {},

    --   -- Don't calculate root dir on specific directories
    --   -- Ex: { "~/.cargo/*", ... }
    --   exclude_dirs = {},

    --   -- Show hidden files in telescope
    --   show_hidden = false,

    --   -- When set to false, you will get a message when project.nvim changes your
    --   -- directory.
    --   silent_chdir = true,

    --   -- Path where project.nvim will store the project history for use in
    --   -- telescope
    --   datapath = vim.fn.stdpath("data"),
    -- }

    -- ---@type ProjectOptions
    -- M.options = {}

    -- M.setup = function(options)
    --   M.options = vim.tbl_deep_extend("force", M.defaults, options or {})

    --   local glob = require("project_nvim.utils.globtopattern")
    --   local home = vim.fn.expand("~")
    --   M.options.exclude_dirs = vim.tbl_map(function(pattern)
    --     if vim.startswith(pattern, "~/") then
    --       pattern = home .. "/" .. pattern:sub(3, #pattern)
    --     end
    --     return glob.globtopattern(pattern)
    --   end, M.options.exclude_dirs)

    --   vim.opt.autochdir = false -- implicitly unset autochdir

    --   require("project_nvim.utils.path").init()
    --   require("project_nvim.project").init()
    -- end

    -- return M

    -- fin de packer  
end)
