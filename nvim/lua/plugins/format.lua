return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      sqlfluff = {
        -- Force sqlfluff to use the sqlite dialect
        args = { "format", "--dialect=sqlite", "-" },
      },
    },
    formatters_by_ft = {
      sql = { "sqlfluff" },
    },
  },
}
