-- general
vim.opt.guicursor = ""  
vim.opt.termguicolors = true 
vim.opt.errorbells = false
vim.opt.hidden = true 
vim.opt.scrolloff = 10 
vim.opt.encoding = "utf-8" 
vim.opt.colorcolumn = "80" 
vim.opt.signcolumn = "yes" 
vim.opt.fillchars:append({ eob = ' ' })-- remove the ~ from end of buffer
vim.opt.clipboard = 'unnamedplus'-- Use Linux system clipboard
vim.opt.wrap = false
vim.opt.breakindent = true -- maintain indent when wrapping indented lines

-- line numbers
vim.opt.nu = true 
vim.opt.relativenumber = true 

-- tab & indent 
vim.opt.tabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.smartindent = true
vim.opt.expandtab = false

-- search
vim.opt.hlsearch = false 
vim.opt.incsearch = true 
vim.opt.ignorecase = true 
vim.opt.smartcase = true 

-- split screen
vim.opt.splitbelow = true 
vim.opt.splitright = true 

-- keybindings
vim.g.mapleader = " " 
