return require('packer').startup(function()
    -- My plugins here
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- para ka carga rapida impatient
    use 'lewis6991/impatient.nvim'
    
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

    -- la linea de abajo Staline
    use 'tamton-aquib/staline.nvim'
    
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
    --require("nvim-lsp-installer").setup {}
    --require'lspconfig'.pyright.setup {}   
    -- Soporte LSP
    use {
     'tami5/lspsaga.nvim',
    requires = {

    {'neovim/nvim-lspconfig'},
    {'williamboman/nvim-lsp-installer'},

    -- Autocompletado
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-vsnip'},
    {'hrsh7th/vim-vsnip'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    {'jose-elias-alvarez/null-ls.nvim'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

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
--    use {
--        "ThePrimeagen/refactoring.nvim",
--        requires = {
--            {"nvim-lua/plenary.nvim"}, {"nvim-treesitter/nvim-treesitter"}
--        }
--    }
--	
	-- problemas
    --use {
    --    "folke/trouble.nvim",
    --    requires = "kyazdani42/nvim-web-devicons",
    --    config = function()
    --        require("trouble").setup {
    --            -- your configuration comes here
    --            -- or leave it empty to use the default settings
    --            -- refer to the configuration section below
    --       }
    --    end
    --}

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

    -- gitsigns-nvim
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
    
    -- transparente
    use 'xiyaowong/nvim-transparent'
    
    -- conexion a bases de datos
    --use({
    --   "kristijanhusak/vim-dadbod-ui",
    --        requires = {
    --		"tpope/vim-dadbod",
    --		"kristijanhusak/vim-dadbod-completion",
    --	"tpope/vim-dotenv",
    --		},
    --	})
    
    --rest-nvim
--    use ({
--	  "NTBBloodbath/rest.nvim",
--	  requires = { "nvim-lua/plenary.nvim" },
--	 })
	 
    --Debuger nvim-dap
--    use 'mfussenegger/nvim-dap'
--    use 'Pocco81/DAPInstall.nvim'
--    use 'szw/vim-maximizer'
    
    --Mini mapa
    --use 'wfxr/minimap.vim'
    
    --Maper
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
