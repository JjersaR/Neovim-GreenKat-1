-- acelerar tiempos de neovim
pcall(require,"impatient")

-- instalar packer dentro de tu configuracion
if require "first_load"() then
  return
end
-- para que cargue packer de forma interna y no externa debes de ir a la carpeta de tu nvim, agarrar  que se supone 
-- es la que descargaste de mi configuracionlua y soltarla en terminal la que esta dentro de nvim y luego correr en terminal el siguite comando
-- wget https://raw.githubusercontent.com/CaoaDev/Neovim-GreenKat/main/lua/first_load.lua

-- los plugins
require('plugins')

-- configuracion y atajos
require('settings')
require('keymaps')

-- conf de los plugins, los que tienen * son importantes.
require('staline-config')-- linea de status abajo*
require('treesitter-config')-- sintaxis pone de color las palabras reservadas del lenguaje*
require('bufferline-config')-- buffers o pestañas*
require('telescope-config')-- nevagador de archivos y buscador*
require('cmp-config')-- dependecias de lsp*
require('lsp-config')-- lenguajes*
require('lenguajes')-- configura*
require('lspsaga-config')-- ayuda y agregados de lsp*
require('autopairs-config')-- para saber el llaves en el codigo*
require('whichkeys-config')-- menu de comandos se utiliza cuando la config de telcas o muchos comandos en un plugin se agrega ak*
require('toggleterm-config')-- terminales*
require('blankline-config')-- lineas de espacio en el codigo*
require('gitsigns-config')-- ver modificaciones de tu documento en el repositorio de github*
require('dashboard-config')-- pantalla de inicio de neovim*
require('rnvimr-config')-- ranger visor de documentos*
require('nulls-ls-config')-- formato de lenguajes*
require('reach-config')-- para ver buffers "serian las pestañas" en la misma pantalla para coparar codigo de noevin
require('comment-config')-- comentar lineas
require('rename-config')-- renombrar funciones
require('hop-vim')-- buscar palabras o moverte a lineas
require('nvim-spectre')-- reemplaza en masa la palabra en todos tus arhcivos del proyecto*
require('Nvim-web-devicons')-- iconons 
require('tree-config')-- navegador de paquetes
require('transparent-config')-- transparente
--require ('dadbod')-- Conexion a bases de datos
--require('refactoring-nvim')-- refactoriza o cambia de nombre de una variable o x cosa en todos tus archivos
--require('rest-nvim')-- para postman 
--require('nvim-dap')-- debuger
--require('trouble-config')-- errores generales

-- dan errores
--require("nvim-mapper")-- In-place converter of Vim's :map commands family to Neovim's Lua function vim.api.nvim_set_keymap 
                        --or other custom mapping handling functions.
--require('project-nvim')

--Temas--
--nightfox
require('Nightfox')
--tokyodark
--vim.cmd[[colorscheme tokyodark]]
--nord
--vim.cmd[[colorscheme nord]]
--neon
--vim.cmd[[colorscheme neon]]
--moon
--vim.cmd[[colorscheme blue-moon]]
--catppuccin
--vim.cmd[[colorscheme catppuccin]]
--tokyonight
--vim.cmd[[colorscheme tokyonight]]
