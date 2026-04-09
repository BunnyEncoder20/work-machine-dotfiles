local cmp = require("cmp")

cmp.setup({
  sources = cmp.config.sources({
    { name = "ai", priority = 1000 }, -- 👈 Ollama (top priority)
    { name = "nvim_lsp", priority = 800 },
    { name = "luasnip", priority = 700 },
    { name = "buffer", priority = 500 },
    { name = "path", priority = 400 },
  }),
})
