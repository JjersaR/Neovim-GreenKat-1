local staline = require('staline')
local percentage = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = {
    "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██"
  }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end
local time = function()
  return os.date("%a │ %H:%M %x")
end
local my_colors = {n = "#9CCFD8", i = "#9CCFD8", c = "#9CCFD8", v = "#9CCFD8", t = "#9CCFD8"}
staline.setup {
  sections = {
    left = {
             'mode', {'StalineBranch', 'file_name', 'branch'},percentage, { 'Evil', ' ' }, ' ',
           },
    mid = {'lsp_name'},
  right = {
		{ 'StalineEnc', vim.bo.fileencoding:upper() }, '  ',  -- Example for custom section
		{ 'StalineEnc', 'cool_symbol'},                 -- the cool_symbol for your OS
		{'right_sep_double', 'line_column', 'left_sep_double'},
		{ 'StalineGit', 'branch' }, percentage                  -- Branch Name in different highlight
	  }
     },
  defaults = {
    true_colors = true, -- LSP highlighing
    font_active = "none",
    branch_symbol = " ", -- branch symbol
    mod_symbol = "  ", -- modified symbol
    bg = "#202328",
    branch_symbol = " ",
    line_column = "[%l:%c] 並%p%% ",
  },
  mode_icons = {
    ['n'] = ' ',
    ['no'] = ' ',
    ['nov'] = ' ',
    ['noV'] = ' ',
    ['niI'] = ' ',
    ['niR'] = ' ',
    ['niV'] = ' ',
    ['i'] = ' ',
    ['ic'] = ' ',
    ['ix'] = ' ',
    ['s'] = ' ',
    ['S'] = ' ',
    ['v'] = ' ',
    ['V'] = ' ',
    [''] = ' ',
    ['r'] = ' ',
    ['r?'] = ' ',
    ['R'] = ' ',
    ['c'] = 'גּ ',
    ['t'] = ' '
  },
 mode_colors = {
		n = "#38b1f0",
		i = "#9ece6a",       -- etc mode
	},
-- mode_colors = my_colors, -- Change mode colors	
  special_table = {
    NvimTree = {'File Explorer', ' '},
    packer = {'Packer', ' '},
    TelescopePrompt = {'Telescope', ' '}
  },
  lsp_symbols = {Error = " ", Info = " ", Warn = " ", Hint = " "}
}
vim.cmd [[hi StalineBranch guifg=#C4A7E7]]
vim.cmd [[hi StalineName guifg=#EBBCBA]]
vim.cmd [[hi Evil        guifg=#f36365 guibg=#202328]]       -- Higlight for Evil symbol
vim.cmd [[hi StalineEnc  guifg=#7d9955 guibg=#202328]]       -- Encoding Highlight
vim.cmd [[hi StalineGit  guifg=#8583b3 guibg=#202328]]       -- Branch Name Highlight
vim.cmd [[hi StalineFile guifg=#c37cda guibg=#202328]]       -- File name Highlight
