# Neovim-GreenKat
Este es una configuracion ya esta bastante trabajada espero les guste, a mi me encanto xD...
Este tarbajo fue echo por Ricardo Sanchez yo solo agrege pocas cosas a si q el agredicimiento a el y ak les dejo su git

https://github.com/JjersaR

Si lo quiren instalar en linux solo tiene que poner la carpeta dentro de su home y .config y pegar la carpeta luego bajar
Packer lua en google y clonar solo lo que pide, ya luego entrar a neovim y poner :PackerSync y luego :PackerUpdate
ya echo eso salir de noevim cerrar terminal y entrar y correr luego un :CheckHeal y les dira lo q falta por instalar
por lo general son dependencias y buscar los probelmas en google y solucionarlo ojo esto es de esfuerzo, tiempo y ganas,
cuado todo lo hayan solucionado dentro de la carpeta de nevim/lua ahi encontraran las capetas que requieren, en plugins 
podran agregar mas plugins y ver la lsita q mas abajo le dejo lo que contiene, en keymaps y whichkeys-config es para ver la 
configuracion de las teclas para realizar las acciones.

le dejo lo que contiene este nvim

-- los plugins
require('plugins')

-- configuracion y atajos
require('settings')
require('keymaps')

-- conf de los plugins
require('staline-config')
require('treesitter-config')
require('bufferline-config')
require('tree-config')
require('telescope-config')
require('cmp-config')
require('lsp-config')
require('lenguajes')
require('lspsaga-config')
require('autopairs-config')
require('whichkeys-config')
require('toggleterm-config')
require('blankline-config')
require('gitsigns-config')
require('dashboard-config')
require('rnvimr-config')
require('trouble-config')
require('nulls-ls-config')
require('reach-config')
require('comment-config')
require('rename-config')
require('hop-vim')
require('refactoring-nvim')
require('nvim-spectre')
require('gitsigns.nvim')
require('project-nvim')


--moon
--vim.cmd[[colorscheme blue-moon]]

--catppuccin
--vim.cmd[[colorscheme catppuccin]]

--tokyonight
vim.cmd[[colorscheme tokyonight]]
