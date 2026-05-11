return {
    "windwp/nvim-ts-autotag",
    opts = {
        -- New configuration layout
        opts = {
            enable_close = true,
            enable_rename = true,
            enable_close_on_slash = false,
        },
        aliases = {
            ["tmpl"] = "html",
        },
        -- Per filetype overrides now live under 'per_filetype' in the main table
        -- per_filetype = {
        --     ["html"] = {
        --         enable_close = true,
        --     },
        -- },
    },
}
