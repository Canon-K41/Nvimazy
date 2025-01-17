return {
    -- lazy.nvim
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },
    {
        'rcarriga/nvim-notify',
        config = function()
            require('notify').setup({
                max_width = 30,
                render = "wrapped-compact",
                stages = 'fade_in_slide_out',
                timeout = 500,
                background_colour = '#1e222a',
                text_colour = '#abb2bf',
                icons = {
                    ERROR = '',
                    WARN = '',
                    INFO = '',
                    DEBUG = '',
                    TRACE = '✎',
                },
            })
        end,
    }
}
