-- emerald-forest highlight groups
local M = {}

function M.setup(p)
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  ---------------------------------------------------------------------------
  -- Editor
  ---------------------------------------------------------------------------
  hl("Normal",         { fg = p.fg, bg = p.bg0 })
  hl("NormalFloat",    { fg = p.fg, bg = p.bg2 })
  hl("NormalNC",       { fg = p.fg, bg = p.bg_dim })
  hl("Cursor",         { reverse = true })
  hl("CursorLine",    { bg = p.bg1 })
  hl("CursorColumn",  { bg = p.bg1 })
  hl("CursorLineNr",  { fg = p.grey2, bg = p.bg1 })
  hl("LineNr",         { fg = p.grey0 })
  hl("SignColumn",     { fg = p.fg, bg = p.bg0 })
  hl("FoldColumn",     { fg = p.grey0, bg = p.bg0 })
  hl("Folded",         { fg = p.grey1, bg = p.bg1 })
  hl("VertSplit",      { fg = p.bg4 })
  hl("WinSeparator",   { fg = p.bg4 })
  hl("ColorColumn",    { bg = p.bg1 })
  hl("Conceal",        { fg = p.grey0 })
  hl("NonText",        { fg = p.bg4 })
  hl("SpecialKey",     { fg = p.bg4 })
  hl("Whitespace",     { fg = p.bg4 })
  hl("EndOfBuffer",    { fg = p.bg0 })

  -- Popup menu
  hl("Pmenu",          { fg = p.fg, bg = p.bg2 })
  hl("PmenuSel",       { fg = p.bg0, bg = p.green })
  hl("PmenuSbar",      { bg = p.bg3 })
  hl("PmenuThumb",     { bg = p.grey0 })

  -- Search
  hl("Search",         { fg = p.bg0, bg = p.green })
  hl("IncSearch",      { fg = p.bg0, bg = p.orange })
  hl("CurSearch",      { fg = p.bg0, bg = p.orange })
  hl("Substitute",     { fg = p.bg0, bg = p.red })

  -- Visual
  hl("Visual",         { bg = p.bg_visual })
  hl("VisualNOS",      { bg = p.bg_visual })

  -- Match paren
  hl("MatchParen",     { fg = p.orange, bold = true })

  -- Statusline
  hl("StatusLine",     { fg = p.grey1, bg = p.bg1 })
  hl("StatusLineNC",   { fg = p.grey0, bg = p.bg_dim })

  -- Tabline
  hl("TabLine",        { fg = p.grey1, bg = p.bg_dim })
  hl("TabLineFill",    { bg = p.bg_dim })
  hl("TabLineSel",     { fg = p.fg, bg = p.bg0 })

  -- Winbar
  hl("WinBar",         { fg = p.fg, bg = p.bg0 })
  hl("WinBarNC",       { fg = p.grey1, bg = p.bg_dim })

  -- Floating windows
  hl("FloatBorder",    { fg = p.grey1, bg = p.bg2 })
  hl("FloatTitle",     { fg = p.green, bg = p.bg2, bold = true })

  -- Messages
  hl("ErrorMsg",       { fg = p.red })
  hl("WarningMsg",     { fg = p.yellow })
  hl("MoreMsg",        { fg = p.green })
  hl("ModeMsg",        { fg = p.fg, bold = true })
  hl("Question",       { fg = p.green })

  -- Directory
  hl("Directory",      { fg = p.green })
  hl("Title",          { fg = p.orange, bold = true })

  -- Spell
  hl("SpellBad",       { sp = p.red, undercurl = true })
  hl("SpellCap",       { sp = p.blue, undercurl = true })
  hl("SpellLocal",     { sp = p.aqua, undercurl = true })
  hl("SpellRare",      { sp = p.purple, undercurl = true })

  ---------------------------------------------------------------------------
  -- Syntax
  ---------------------------------------------------------------------------
  hl("Comment",        { fg = p.grey1, italic = true })
  hl("Constant",       { fg = p.aqua })
  hl("String",         { fg = p.green })
  hl("Character",      { fg = p.green })
  hl("Number",         { fg = p.purple })
  hl("Boolean",        { fg = p.purple })
  hl("Float",          { fg = p.purple })

  hl("Identifier",     { fg = p.blue })
  hl("Function",       { fg = p.green })

  hl("Statement",      { fg = p.red })
  hl("Conditional",    { fg = p.red })
  hl("Repeat",         { fg = p.red })
  hl("Label",          { fg = p.orange })
  hl("Operator",       { fg = p.orange })
  hl("Keyword",        { fg = p.red })
  hl("Exception",      { fg = p.red })

  hl("PreProc",        { fg = p.purple })
  hl("Include",        { fg = p.red })
  hl("Define",         { fg = p.purple })
  hl("Macro",          { fg = p.aqua })

  hl("Type",           { fg = p.yellow })
  hl("StorageClass",   { fg = p.orange })
  hl("Structure",      { fg = p.orange })
  hl("Typedef",        { fg = p.yellow })

  hl("Special",        { fg = p.yellow })
  hl("SpecialChar",    { fg = p.yellow })
  hl("Tag",            { fg = p.orange })
  hl("Delimiter",      { fg = p.fg })
  hl("SpecialComment", { fg = p.grey2, italic = true })
  hl("Debug",          { fg = p.orange })

  hl("Underlined",     { fg = p.blue, underline = true })
  hl("Ignore",         { fg = p.grey0 })
  hl("Error",          { fg = p.red })
  hl("Todo",           { fg = p.aqua, bold = true })

  -- Added (link for markdown bold/italic etc.)
  hl("Bold",           { bold = true })
  hl("Italic",         { italic = true })

  ---------------------------------------------------------------------------
  -- Diagnostics
  ---------------------------------------------------------------------------
  hl("DiagnosticError",            { fg = p.red })
  hl("DiagnosticWarn",             { fg = p.yellow })
  hl("DiagnosticInfo",             { fg = p.blue })
  hl("DiagnosticHint",             { fg = p.green })
  hl("DiagnosticOk",               { fg = p.aqua })

  hl("DiagnosticVirtualTextError", { fg = p.red, bg = p.bg_red })
  hl("DiagnosticVirtualTextWarn",  { fg = p.yellow, bg = p.bg_yellow })
  hl("DiagnosticVirtualTextInfo",  { fg = p.blue, bg = p.bg_blue })
  hl("DiagnosticVirtualTextHint",  { fg = p.green, bg = p.bg_green })
  hl("DiagnosticVirtualTextOk",    { fg = p.aqua, bg = p.bg_green })

  hl("DiagnosticUnderlineError",   { sp = p.red, undercurl = true })
  hl("DiagnosticUnderlineWarn",    { sp = p.yellow, undercurl = true })
  hl("DiagnosticUnderlineInfo",    { sp = p.blue, undercurl = true })
  hl("DiagnosticUnderlineHint",    { sp = p.green, undercurl = true })
  hl("DiagnosticUnderlineOk",      { sp = p.aqua, undercurl = true })

  hl("DiagnosticSignError",        { fg = p.red })
  hl("DiagnosticSignWarn",         { fg = p.yellow })
  hl("DiagnosticSignInfo",         { fg = p.blue })
  hl("DiagnosticSignHint",         { fg = p.green })
  hl("DiagnosticSignOk",           { fg = p.aqua })

  ---------------------------------------------------------------------------
  -- Diff
  ---------------------------------------------------------------------------
  hl("DiffAdd",     { bg = p.bg_green })
  hl("DiffChange",  { bg = p.bg_blue })
  hl("DiffDelete",  { bg = p.bg_red })
  hl("DiffText",    { bg = p.bg_blue, bold = true })

  ---------------------------------------------------------------------------
  -- LSP
  ---------------------------------------------------------------------------
  hl("LspReferenceText",            { bg = p.bg2 })
  hl("LspReferenceRead",            { bg = p.bg2 })
  hl("LspReferenceWrite",           { bg = p.bg2 })
  hl("LspSignatureActiveParameter", { fg = p.orange, bold = true })
  hl("LspInlayHint",                { fg = p.grey0, bg = p.bg1, italic = true })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hl("@variable",              { fg = p.fg })
  hl("@variable.builtin",     { fg = p.blue })
  hl("@variable.parameter",   { fg = p.fg })
  hl("@variable.member",      { fg = p.blue })

  hl("@constant",             { fg = p.aqua })
  hl("@constant.builtin",     { fg = p.purple })
  hl("@constant.macro",       { fg = p.aqua })

  hl("@module",               { fg = p.aqua })
  hl("@module.builtin",       { fg = p.aqua })
  hl("@label",                { fg = p.orange })

  hl("@string",               { fg = p.green })
  hl("@string.escape",        { fg = p.green })
  hl("@string.regexp",        { fg = p.green })
  hl("@string.special",       { fg = p.aqua })
  hl("@string.special.url",   { fg = p.blue, underline = true })

  hl("@character",            { fg = p.green })
  hl("@character.special",    { fg = p.yellow })

  hl("@boolean",              { fg = p.purple })
  hl("@number",               { fg = p.purple })
  hl("@number.float",         { fg = p.purple })

  hl("@type",                 { fg = p.yellow })
  hl("@type.builtin",         { fg = p.yellow })
  hl("@type.definition",      { fg = p.yellow })
  hl("@type.qualifier",       { fg = p.red })

  hl("@attribute",            { fg = p.purple })
  hl("@property",             { fg = p.blue })

  hl("@function",             { fg = p.green })
  hl("@function.builtin",     { fg = p.green })
  hl("@function.call",        { fg = p.green })
  hl("@function.macro",       { fg = p.aqua })
  hl("@function.method",      { fg = p.green })
  hl("@function.method.call", { fg = p.green })

  hl("@constructor",          { fg = p.yellow })

  hl("@operator",             { fg = p.orange })

  hl("@keyword",              { fg = p.red })
  hl("@keyword.conditional",  { fg = p.red })
  hl("@keyword.repeat",       { fg = p.red })
  hl("@keyword.return",       { fg = p.red })
  hl("@keyword.exception",    { fg = p.red })
  hl("@keyword.import",       { fg = p.red })
  hl("@keyword.operator",     { fg = p.orange })
  hl("@keyword.function",     { fg = p.red })
  hl("@keyword.type",         { fg = p.red })

  hl("@punctuation.bracket",  { fg = p.fg_dim })
  hl("@punctuation.delimiter",{ fg = p.fg_dim })
  hl("@punctuation.special",  { fg = p.blue })

  hl("@comment",              { fg = p.grey1, italic = true })
  hl("@comment.todo",         { fg = p.aqua, bold = true })
  hl("@comment.note",         { fg = p.blue, bold = true })
  hl("@comment.warning",      { fg = p.yellow, bold = true })
  hl("@comment.error",        { fg = p.red, bold = true })

  hl("@markup.heading",       { fg = p.orange, bold = true })
  hl("@markup.heading.1",     { fg = p.red, bold = true })
  hl("@markup.heading.2",     { fg = p.orange, bold = true })
  hl("@markup.heading.3",     { fg = p.yellow, bold = true })
  hl("@markup.heading.4",     { fg = p.green, bold = true })
  hl("@markup.heading.5",     { fg = p.blue, bold = true })
  hl("@markup.heading.6",     { fg = p.purple, bold = true })
  hl("@markup.bold",          { bold = true })
  hl("@markup.italic",        { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.underline",     { underline = true })
  hl("@markup.link",          { fg = p.aqua })
  hl("@markup.link.url",      { fg = p.blue, underline = true })
  hl("@markup.raw",           { fg = p.green })
  hl("@markup.list",          { fg = p.red })
  hl("@markup.math",          { fg = p.purple })

  hl("@tag",                  { fg = p.orange })
  hl("@tag.attribute",        { fg = p.green })
  hl("@tag.delimiter",        { fg = p.fg_dim })

  hl("@diff.plus",            { fg = p.green })
  hl("@diff.minus",           { fg = p.red })
  hl("@diff.delta",           { fg = p.blue })

  ---------------------------------------------------------------------------
  -- Plugin: Telescope
  ---------------------------------------------------------------------------
  hl("TelescopeNormal",        { fg = p.fg, bg = p.bg_dim })
  hl("TelescopeBorder",        { fg = p.bg4, bg = p.bg_dim })
  hl("TelescopePromptNormal",  { fg = p.fg, bg = p.bg1 })
  hl("TelescopePromptBorder",  { fg = p.bg4, bg = p.bg1 })
  hl("TelescopePromptTitle",   { fg = p.bg0, bg = p.green, bold = true })
  hl("TelescopePreviewTitle",  { fg = p.bg0, bg = p.aqua, bold = true })
  hl("TelescopeResultsTitle",  { fg = p.bg0, bg = p.blue, bold = true })
  hl("TelescopeSelection",     { bg = p.bg_visual })
  hl("TelescopeSelectionCaret", { fg = p.green, bg = p.bg_visual })
  hl("TelescopeMatching",      { fg = p.green, bold = true })
  hl("TelescopePromptPrefix",  { fg = p.green })

  ---------------------------------------------------------------------------
  -- Plugin: nvim-cmp
  ---------------------------------------------------------------------------
  hl("CmpItemAbbr",               { fg = p.fg })
  hl("CmpItemAbbrMatch",          { fg = p.green, bold = true })
  hl("CmpItemAbbrMatchFuzzy",     { fg = p.green, bold = true })
  hl("CmpItemAbbrDeprecated",     { fg = p.grey0, strikethrough = true })
  hl("CmpItemMenu",               { fg = p.grey1 })
  hl("CmpItemKindDefault",        { fg = p.fg_dim })
  hl("CmpItemKindFunction",       { fg = p.green })
  hl("CmpItemKindMethod",         { fg = p.green })
  hl("CmpItemKindConstructor",    { fg = p.green })
  hl("CmpItemKindVariable",       { fg = p.blue })
  hl("CmpItemKindField",          { fg = p.blue })
  hl("CmpItemKindProperty",       { fg = p.blue })
  hl("CmpItemKindClass",          { fg = p.yellow })
  hl("CmpItemKindInterface",      { fg = p.yellow })
  hl("CmpItemKindStruct",         { fg = p.yellow })
  hl("CmpItemKindModule",         { fg = p.yellow })
  hl("CmpItemKindKeyword",        { fg = p.red })
  hl("CmpItemKindValue",          { fg = p.purple })
  hl("CmpItemKindConstant",       { fg = p.aqua })
  hl("CmpItemKindEnum",           { fg = p.yellow })
  hl("CmpItemKindEnumMember",     { fg = p.aqua })
  hl("CmpItemKindOperator",       { fg = p.orange })
  hl("CmpItemKindSnippet",        { fg = p.orange })
  hl("CmpItemKindText",           { fg = p.fg_dim })
  hl("CmpItemKindTypeParameter",  { fg = p.yellow })

  ---------------------------------------------------------------------------
  -- Plugin: Gitsigns
  ---------------------------------------------------------------------------
  hl("GitSignsAdd",              { fg = p.green })
  hl("GitSignsChange",           { fg = p.blue })
  hl("GitSignsDelete",           { fg = p.red })
  hl("GitSignsAddNr",            { fg = p.green })
  hl("GitSignsChangeNr",         { fg = p.blue })
  hl("GitSignsDeleteNr",         { fg = p.red })
  hl("GitSignsAddLn",            { bg = p.bg_green })
  hl("GitSignsChangeLn",         { bg = p.bg_blue })
  hl("GitSignsDeleteLn",         { bg = p.bg_red })
  hl("GitSignsCurrentLineBlame", { fg = p.grey0, italic = true })

  ---------------------------------------------------------------------------
  -- Plugin: nvim-tree
  ---------------------------------------------------------------------------
  hl("NvimTreeNormal",            { fg = p.fg, bg = p.bg_dim })
  hl("NvimTreeEndOfBuffer",       { fg = p.bg_dim, bg = p.bg_dim })
  hl("NvimTreeFolderIcon",        { fg = p.orange })
  hl("NvimTreeFolderName",        { fg = p.green })
  hl("NvimTreeOpenedFolderName",  { fg = p.green, bold = true })
  hl("NvimTreeEmptyFolderName",   { fg = p.grey1 })
  hl("NvimTreeRootFolder",        { fg = p.orange, bold = true })
  hl("NvimTreeSpecialFile",       { fg = p.yellow })
  hl("NvimTreeGitDirty",          { fg = p.yellow })
  hl("NvimTreeGitNew",            { fg = p.green })
  hl("NvimTreeGitDeleted",        { fg = p.red })
  hl("NvimTreeIndentMarker",      { fg = p.bg4 })
  hl("NvimTreeWinSeparator",      { fg = p.bg4 })

  ---------------------------------------------------------------------------
  -- Plugin: neo-tree
  ---------------------------------------------------------------------------
  hl("NeoTreeNormal",           { fg = p.fg, bg = p.bg_dim })
  hl("NeoTreeNormalNC",         { fg = p.fg, bg = p.bg_dim })
  hl("NeoTreeEndOfBuffer",      { fg = p.bg_dim, bg = p.bg_dim })
  hl("NeoTreeDirectoryIcon",    { fg = p.orange })
  hl("NeoTreeDirectoryName",    { fg = p.green })
  hl("NeoTreeRootName",         { fg = p.orange, bold = true })
  hl("NeoTreeFileName",         { fg = p.fg })
  hl("NeoTreeGitModified",      { fg = p.yellow })
  hl("NeoTreeGitUntracked",     { fg = p.green })
  hl("NeoTreeGitDeleted",       { fg = p.red })
  hl("NeoTreeGitConflict",      { fg = p.orange })
  hl("NeoTreeIndentMarker",     { fg = p.bg4 })
  hl("NeoTreeWinSeparator",     { fg = p.bg4 })

  ---------------------------------------------------------------------------
  -- Plugin: indent-blankline
  ---------------------------------------------------------------------------
  hl("IblIndent",             { fg = p.bg3 })
  hl("IblScope",              { fg = p.grey0 })
  hl("IndentBlanklineChar",   { fg = p.bg3 })          -- v2 compat

  ---------------------------------------------------------------------------
  -- Plugin: which-key
  ---------------------------------------------------------------------------
  hl("WhichKey",          { fg = p.green })
  hl("WhichKeyGroup",     { fg = p.blue })
  hl("WhichKeySeparator", { fg = p.grey0 })
  hl("WhichKeyDesc",      { fg = p.fg })
  hl("WhichKeyFloat",     { bg = p.bg2 })
  hl("WhichKeyBorder",    { fg = p.grey1, bg = p.bg2 })
  hl("WhichKeyValue",     { fg = p.grey1 })
end

return M
