-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  desc = "Disable New Line Comment",
})

-- disable virtual text for diagnostics
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.diagnostic.config({ virtual_text = false })
  end,
})

local persistence = require("persistence")

-- 1. Save the current session before the directory actually changes
vim.api.nvim_create_autocmd("DirChangedPre", {
  pattern = "global",
  callback = function()
    -- Save the state of the project we are LEAVING
    persistence.save()
  end,
})

-- 2. Clean up and Load after the directory has changed
vim.api.nvim_create_autocmd("DirChanged", {
  pattern = "global", -- Only triggers on project-level changes (cd)
  callback = function()
    -- We use schedule to ensure Neovim has finished the directory switch
    vim.schedule(function()
      -- Close all existing buffers so the workspace is clean
      -- 'silent!' hides errors if no buffers are open
      -- '%bd!' deletes all buffers and ignores unsaved changes (since we just saved)
      vim.cmd("silent! %bd!")

      -- Load the session for the NEW directory
      -- last = false ensures it loads the session specific to the current CWD
      persistence.load({ last = false })
    end)
  end,
})
