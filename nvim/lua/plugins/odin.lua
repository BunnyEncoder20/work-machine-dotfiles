return {
  -- 1. LSP Configuration (nvim-lspconfig)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          -- This passes the settings you found to the server
          init_options = {
            checker_args = "-strict-style",
          },
        },
      },
    },
  },

  -- 2. Formatting (conform.nvim)
  {
    "stevearc/conform.nvim",
    opts = {
      -- Define the formatter specifically as requested by the docs
      formatters = {
        odinfmt = {
          command = "odinfmt",
          args = { "-stdin" },
          stdin = true,
        },
      },
      -- Attach it to the odin filetype
      formatters_by_ft = {
        odin = { "odinfmt" },
      },
    },
  },

  -- 3. Syntax Highlighting (Treesitter)
  -- Highly recommended to ensure the code looks correct
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "odin" })
      end
    end,
  },
}
