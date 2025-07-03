-- This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
  nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

capabilities.general = capabilities.general or {}
capabilities.general.positionEncodings = { 'utf-16' }

-- Setup mason itself
require('mason').setup({})

-- Setup neovim lua configuration
require('neodev').setup()

-- Setup mason-lspconfig with servers to install
require('mason-lspconfig').setup({
  ensure_installed = {
    'phpactor',
    'html',
    'ts_ls',
    'pyright',
    'lua_ls',
  },
  automatic_enable = true,
})

-- Configure LSP servers using the new vim.lsp.config API (Neovim 0.11+)
-- Global configuration for all LSP servers
vim.lsp.config('*', {
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Server-specific configurations
vim.lsp.config('phpactor', {
  init_options = {
    ['language_server_phpstan.enabled'] = false,
  },
})

vim.lsp.config('html', {
  filetypes = { 'html', 'twig', 'hbs' },
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
})
