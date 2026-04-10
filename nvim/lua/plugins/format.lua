return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      sqlfluff = {
        args = { "fix", "--disable-progress-bar", "--nocolor", "--quiet", "-" },
        -- Tell conform that exit code 1 is a valid success state!
        exit_codes = { 0, 1 },
      },
    },
    formatters_by_ft = {
      sql = { "sqlfluff" },
    },
  },
}
