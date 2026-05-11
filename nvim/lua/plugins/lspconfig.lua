return {
    "neovim/nvim-lspconfig",
    opts = {
        inlay_hints = { enabled = false },
        servers = {
            htmx = {
                filetypes = { "html", "templ", "tmpl" },
            },
        },
    },
}
