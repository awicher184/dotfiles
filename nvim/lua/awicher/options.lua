local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0, -- so that `` is visible in markdown files
    errorbells = false,
    expandtab = true,
    fileencoding = "utf-8",
    guicursor = "",
    hlsearch = false,
    ignorecase = true,
    number = true,
    numberwidth = 4,
    pumheight = 10, -- pop up menu height
    relativenumber = true,
    scrolloff = 10,
    shiftwidth = 4,
    showmode = false,
    showtabline = 2, -- always show tabs
    sidescrolloff = 8,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    tabstop = 4,
    termguicolors = true,
    timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true, -- enable persistent undo
    updatetime = 300, -- faster completion (4000ms default)
    wrap = false,
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited 
}

for option, value in pairs(options) do
    vim.opt[option] = value
end
