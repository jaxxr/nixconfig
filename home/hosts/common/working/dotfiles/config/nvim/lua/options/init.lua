local core = require("core")
local mod = {}

local opts = {
	autoindent = true,
	background = "dark",
	backspace = "indent,start,eol",
	clipboard = "unnamedplus",
	cmdheight = 2,
	compatible = false,
	completeopt = "menuone,noselect",
	cursorline = true,
	encoding = "utf-8",
	expandtab = true,
	fileencoding = "utf-8",
	hidden = true,
	ignorecase = true,
	inccommand = "nosplit",
	laststatus = 2,
	lazyredraw = true,
	mouse = "a",
	number = true,
	pumheight = 10,
	relativenumber = true,
	ruler = true,
	scrolloff = 3,
	shiftwidth = 2,
	showtabline = 2,
	smartcase = true,
	smartindent = true,
	smarttab = true,
	softtabstop = 0,
	splitbelow = true,
	splitright = true,
	tabstop = 2,
	termguicolors = true,
	wrap = false,
}

core.setOpts(opts)

vim.cmd([[ 
  let g:netrw_liststyle = 3
]])

return mod
