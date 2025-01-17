return {
    "williamboman/mason.nvim",
    dependencies = { 
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { 
                "cssls", "html", "pyright", "clangd", "jsonls", 
                "rust_analyzer", "ts_ls", "tailwindcss", "sqls" 
            },
            automatic_installation = true,
        })

        -- LSP servers setup
        require('lspconfig').cssls.setup{}
        require('lspconfig').html.setup{}
        require('lspconfig').pyright.setup{}
        require('lspconfig').clangd.setup{}
        require('lspconfig').jsonls.setup{}
        require('lspconfig').rust_analyzer.setup{}
        require('lspconfig').ts_ls.setup{}
        require('lspconfig').tailwindcss.setup{}
        require('lspconfig').sqls.setup{}
    end
}
