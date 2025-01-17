return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter.configs').setup({
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                },
                fold = {
                    enable = true,
                },
                ignore_install = {},
                ensure_installed = {
                    "c", "cpp", "lua", "python", "rust", "bash", "json", "yaml", "html", "css", 
                    "javascript", "typescript", "tsx", "vue", "svelte", "php", "java", "ruby", 
                    "go", "toml", "dockerfile", "regex", "query", "cmake", "swift", "dart", 
                    "scss", "graphql", "jsonc", "haskell", "ocaml", "elm", "nix", "zig", 
                    "scala", "kotlin",
                    "prisma",
                    "markdown",
                    "markdown_inline",
                    "csv",
                    "sql",
                    "xml",
                    "comment",
                    "diff",
                    "git_config",
                    "git_rebase",
                    "gitignore",
                    "gitcommit",
                    "vimdoc",
                    "jsdoc",
                    "http",
                    "make",
                },

                matchup = {
                    enable = true,

                },

                autopairs = {

                    enable = true,

                },

            })

        end

    }

}
