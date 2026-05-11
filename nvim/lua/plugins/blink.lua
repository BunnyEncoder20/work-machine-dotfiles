return {
    "saghen/blink.cmp",
    opts = {
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            providers = {
                lsp = {
                    -- Ensure we aren't filtering out 'Text' kinds
                    -- Blink usually doesn't do this by default, but let's be explicit
                    transform_items = function(_, items)
                        return items
                    end,
                },
            },
        },
        -- This helps blink understand Emmet expansion
        completion = {
            menu = {
                draw = {
                    columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
                },
            },
        },
        snippets = {
            preset = "default",
        },
    },
}
