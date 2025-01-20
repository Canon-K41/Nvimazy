return {
    "williamboman/mason.nvim",
    dependencies = { 
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",  -- 明示的に依存関係を追加
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { 
                "cssls", 
                "html", 
                "pyright", 
                "clangd", 
                "jsonls", 
                "rust_analyzer", 
                "ts_ls",  -- ts_ls から tsserver に修正
                "tailwindcss", 
                "sqls" 
            },
            automatic_installation = true,
        })

        -- LSPの共通設定
        local capabilities = require('cmp_nvim_lsp').default_capabilities()  -- update_capabilities から変更

        require('mason-lspconfig').setup_handlers({
            function(server)
                require('lspconfig')[server].setup({
                    capabilities = capabilities,
                    -- 必要に応じて他の設定を追加
                    -- on_attach = your_on_attach_function,
                })
            end,
            -- サーバー固有の設定が必要な場合は以下のように追加できます
            -- ["rust_analyzer"] = function()
            --     require('lspconfig').rust_analyzer.setup({
            --         capabilities = capabilities,
            --         -- その他のrust_analyzer固有の設定
            --     })
            -- end,
        })
    end
}
