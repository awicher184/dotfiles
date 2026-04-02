-- emerald-forest lualine theme
-- Auto-detected by lualine via vim.g.colors_name

local palette = require("emerald-forest.palette")
local p = palette.get_palette(vim.o.background)

return {
  normal = {
    a = { bg = p.statusline1, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.grey2 },
    c = { bg = p.bg1, fg = p.grey1 },
  },
  insert = {
    a = { bg = p.statusline2, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.fg },
    c = { bg = p.bg1, fg = p.fg },
  },
  visual = {
    a = { bg = p.statusline3, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.fg },
    c = { bg = p.bg1, fg = p.fg },
  },
  replace = {
    a = { bg = p.orange, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.fg },
    c = { bg = p.bg1, fg = p.fg },
  },
  command = {
    a = { bg = p.aqua, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.fg },
    c = { bg = p.bg1, fg = p.fg },
  },
  terminal = {
    a = { bg = p.purple, fg = p.bg0, gui = "bold" },
    b = { bg = p.bg3, fg = p.fg },
    c = { bg = p.bg1, fg = p.fg },
  },
  inactive = {
    a = { bg = p.bg1, fg = p.grey1 },
    b = { bg = p.bg1, fg = p.grey1 },
    c = { bg = p.bg1, fg = p.grey1 },
  },
}
