require "nvchad.mappings"

-- add yours here

-- Disable mappings
local nomap = vim.keymap.del

nomap("n", "<C-n>")
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<leader>ch")
nomap("n", "<leader>fm")
nomap("n", "<leader>fo")
nomap("n", "<leader>lf")
nomap("n", "<leader>ma")
nomap("n", "<leader>cm")
nomap("n", "<leader>gt")
nomap("n", "<leader>th")
nomap("n", "<leader>wk")
nomap("n", "<leader>wK")
nomap("n", "<leader>/")
nomap("n", "<leader>:")
nomap("n", "<tab>")
nomap("n", "<S-tab>")

local map = vim.keymap.set

-- remap nvchad

-- Go previous / next buffer
map("n", "L", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "H", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

-- toggle NvimTree esiser
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "Exit insert mode" })

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { noremap = true, silent = true, desc = "Save file" })

-- delete forward word
map("n", "<C-DEL>", "dw", { noremap = true, silent = true, desc = "Delete backward word" })
map("i", "<C-DEL>", "<space><ESC>ce", { noremap = true, silent = true, desc = "Delete backward word" })

-- split window
map("n", "ss", ":split<Return>", { noremap = true, silent = true, desc = "Split horizontal" })
map("n", "sv", ":vsplit<Return>", { noremap = true, silent = true, desc = "Split vertical" })

-- FROM LAZYVIM: https://www.lazyvim.org/configuration/general#keymaps

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- NVCHAD TERM

-- LazyGit
map("n", "<leader>gg", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "lazygit",
    cmd = "lazygit && exit",
    float_opts = {
      row = 0.05,
      col = 0.05,
      width = 0.9,
      height = 0.9,
    },
  }
end, { desc = "LazyGit" })

-- code runner

map("n", "<leader>r", function()
  require("nvchad.term").runner {
    pos = "float",
    id = "codeRunner",
    cmd = function()
      return require("configs.code-runner").get_cmd()
    end,
  }
end, { desc = "Code Runner" })
