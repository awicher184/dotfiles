vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use {
        "wbthomason/packer.nvim",
        "folke/tokyonight.nvim",
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig"
    }
    
end)
