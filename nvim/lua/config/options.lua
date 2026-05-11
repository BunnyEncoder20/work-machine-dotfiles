-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.opt.shiftwidth = 4 -- Size of an indent
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.softtabstop = 4 -- Number of spaces a tab counts for while editing
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Add any additional options here
vim.opt.relativenumber = true

-- Only look for .git to define the project root
vim.g.root_spec = { ".git" }

-- treat tmpl files like html
vim.filetype.add({
    extension = {
        tmpl = "html",
        templ = "templ",
    },
})
