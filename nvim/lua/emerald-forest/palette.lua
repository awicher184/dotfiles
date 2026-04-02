-- emerald-forest palette
-- A calm, minimalist green-based colorscheme

local M = {}

M.dark = {
  -- Backgrounds (warm dark gray-greens)
  bg_dim    = "#141c19",
  bg0       = "#1a2320",
  bg1       = "#222e2a",
  bg2       = "#2b3934",
  bg3       = "#35443e",
  bg4       = "#3f4e48",
  -- Special backgrounds
  bg_visual = "#324232",
  bg_red    = "#382525",
  bg_green  = "#253825",
  bg_blue   = "#252a38",
  bg_yellow = "#383425",
  -- Foregrounds
  fg        = "#e2e0d0",
  fg_dim    = "#b5b3a4",
  -- Accent colors (earthy wood tones)
  green     = "#8fce9a",   --functions, strings
  aqua      = "#7fd0bb",   --constants, macros
  blue      = "#8bbad6",   --identifiers
  red       = "#c8856a",   --keywords
  orange    = "#c49558",   --operators, labels
  yellow    = "#d4b46a",   --ypes
  purple    = "#b89aae",   --booleans, numbers
  -- Greys
  grey0     = "#556560",
  grey1     = "#728a7e",
  grey2     = "#9aaba2",
  -- Statusline
  statusline1 = "#8fce9a",  -- green (normal mode)
  statusline2 = "#e2e0d0",  -- fg (insert mode)
  statusline3 = "#c8856a",  -- red (visual mode)
  none        = "NONE",
}

M.light = {
  -- Backgrounds (warm parchment/cream)
  bg_dim    = "#ede8da",   -- floats, sidebars, telescope body
  bg0       = "#f8f4e8",   -- default editor bg
  bg1       = "#f0ecdf",   -- cursorline, active statusline
  bg2       = "#e6e2d4",   -- popup menu bg
  bg3       = "#ddd9cb",   -- inactive tab bg
  bg4       = "#d0ccbe",   -- separators, whitespace
  -- Special backgrounds
  bg_visual = "#c8d8c0",   -- visual selection, telescope selection
  bg_red    = "#f5d8d0",
  bg_green  = "#d8e8cc",
  bg_blue   = "#d2def0",
  bg_yellow = "#f0e6c0",
  -- Foregrounds
  fg        = "#22332a",
  fg_dim    = "#3e5244",
  -- Accent colors (forest-inspired, high contrast on cream)
  green     = "#1a6828",   --functions, strings
  aqua      = "#0a7058",   --constants, macros
  blue      = "#1a5c3a",   --fields, identifiers
  red       = "#ba2001",   --keywords (cool, distinct from types)
  orange    = "#8a5420",   --operators, labels
  yellow    = "#a85a10",   --types, class names (warm)
  purple    = "#6e3ea0",   --booleans, numbers
  -- Greys
  grey0     = "#889080",
  grey1     = "#6e8a5e",   --comments
  grey2     = "#4a5e48",
  -- Statusline
  statusline1 = "#1a6828",  -- green (normal mode)
  statusline2 = "#ba2001",  -- fg_dim (insert mode)
  statusline3 = "#066d84",  -- teal (visual mode)
  none        = "NONE",
}

function M.get_palette(style)
  if style == "light" then
    return M.light
  end
  return M.dark
end

return M
