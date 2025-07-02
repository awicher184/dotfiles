-- auto-read buffers after file being changed on disk
vim.api.nvim_create_autocmd(
  { "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" },
  {
    command = "if mode() != 'c' | checktime | endif",
    pattern = { "*" },
  }
)

-- echo message that buffer has been reloaded after file being changed on disk
vim.api.nvim_create_autocmd(
  { "FileChangedShellPost" },
  {
    command = 'echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None',
    pattern = { "*" }, }
)

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- bash lsp
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})
