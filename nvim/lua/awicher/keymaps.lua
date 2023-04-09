local options = {
    noremap = true,
    silent = true,
}

local terminalOptions = { silent = true }

-- Shorten function name
local setKeymap = vim.api.nvim_set_keymap

--Remap space as leader key
setKeymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "

-- normal mode--
-- window navigation
setKeymap("n", "<C-h>", "<C-w>h", options)
setKeymap("n", "<C-j>", "<C-w>j", options)
setKeymap("n", "<C-k>", "<C-w>k", options)
setKeymap("n", "<C-l>", "<C-w>l", options)

setKeymap("n", "<leader>e", ":Lex! 30<cr>", options)

-- resize  with arrows
setKeymap("n", "<C-Up>", ":resize +2<CR>", options)
setKeymap("n", "<C-Down>", ":resize -2<CR>", options)
setKeymap("n", "<C-Left>", ":vertical resize -2<CR>", options)
setKeymap("n", "<C-Right>", ":vertical resize +2<CR>", options)

-- navigate buffers
setKeymap("n", "<S-l>", ":bnext<CR>", options)
setKeymap("n", "<S-h>", ":bprevious<CR>", options)

-- insert mode--
-- press jk fast to enter
setKeymap("i", "jk", "<ESC>", options)

-- visual mode --
-- stay in indent mode
setKeymap("v", "<", "<gv", options)
setKeymap("v", ">", ">gv", options)

-- move text up and down
setKeymap("v", "<A-j>", ":m .+1<CR>==", options)
setKeymap("v", "<A-k>", ":m .-2<CR>==", options)
setKeymap("v", "p", '"_dP', options)

-- visual block mode--
-- move text up and down
setKeymap("x", "J", ":move '>+1<CR>gv-gv", options)
setKeymap("x", "K", ":move '<-2<CR>gv-gv", options)
setKeymap("x", "<A-j>", ":move '>+1<CR>gv-gv", options)
setKeymap("x", "<A-k>", ":move '<-2<CR>gv-gv", options)

-- terminal --
-- better terminal navigation
setKeymap("t", "<C-h>", "<C-\\><C-N><C-w>h", terminalOptions)
setKeymap("t", "<C-j>", "<C-\\><C-N><C-w>j", terminalOptions)
setKeymap("t", "<C-k>", "<C-\\><C-N><C-w>k", terminalOptions)
setKeymap("t", "<C-l>", "<C-\\><C-N><C-w>l", terminalOptions)
