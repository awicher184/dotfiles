-- emerald-forest colorscheme entry point
-- A calm, minimalist forest inspired colorscheme for Neovim

-- Reset all highlights when switching from another colorscheme
if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "emerald-forest"
vim.o.termguicolors = true

local palette = require("emerald-forest.palette")
local highlights = require("emerald-forest.highlights")

local p = palette.get_palette(vim.o.background)
highlights.setup(p)

-- Terminal colors (16 ANSI)
vim.g.terminal_color_0  = p.bg3       -- black
vim.g.terminal_color_1  = p.red       -- red
vim.g.terminal_color_2  = p.green     -- green
vim.g.terminal_color_3  = p.yellow    -- yellow
vim.g.terminal_color_4  = p.blue      -- blue
vim.g.terminal_color_5  = p.purple    -- magenta
vim.g.terminal_color_6  = p.aqua      -- cyan
vim.g.terminal_color_7  = p.fg        -- white
vim.g.terminal_color_8  = p.grey0     -- bright black
vim.g.terminal_color_9  = p.red       -- bright red
vim.g.terminal_color_10 = p.green     -- bright green
vim.g.terminal_color_11 = p.yellow    -- bright yellow
vim.g.terminal_color_12 = p.blue      -- bright blue
vim.g.terminal_color_13 = p.purple    -- bright magenta
vim.g.terminal_color_14 = p.aqua      -- bright cyan
vim.g.terminal_color_15 = p.fg        -- bright white
