require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.relativenumber = true
o.wrap = true
o.breakindent = true
o.formatoptions = "tcqjl"
o.linebreak = true
o.hlsearch = true
o.tabstop = 4
o.shiftwidth = 4
o.smartcase = true
o.expandtab = true
o.scrolloff = 5
o.sidescrolloff = 5
o.cursorline = false
o.fixendofline = false
o.signcolumn = "yes"
o.fileformats = "unix,dos"
-- o.colorcolumn = "80"

-- Taken from https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/lua/config/options.lua
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.autoindent = true
o.smartindent = true
o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
o.smarttab = true
o.fileignorecase = false

vim.bo.softtabstop = 4

-- Opacity of background
o.winblend = 0
o.pumblend = 0 -- It can help nvim cmp to transparent background

-- set global variable to declare os type
vim.g.os_type = require "configs.get-os"

-- border for diagnostic
vim.diagnostic.config {
  float = { border = "rounded" },
}
