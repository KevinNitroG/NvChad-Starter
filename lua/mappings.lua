require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- user - mappings
map("n", "<A-j", ":m +1<CR>==")
map("n", "<A-k", ":m -2<CR>==")
map("i", "<A-j", "<ESC>:m +1<CR>==gi")
map("i", "<A-k", "<ESC>:m -2<CR>==gi")
map("v", "<A-j", ":m '>+1<CR>gv=gv")
map("v", "<A-k", ":m '<-2<CR>gv=gv")

-- -- Compiler

-- -- Open compiler
-- vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
-- -- Redo last selected option
-- vim.api.nvim_set_keymap(
--   "n",
--   "<S-F6>",
--   "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
--     .. "<cmd>CompilerRedo<cr>",
--   { noremap = true, silent = true }
-- )
-- -- Toggle compiler results
-- vim.api.nvim_set_keymap("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

-- user - dap settings from dreamsofcode-io

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })
map("n", "<leader>dt", "<cmd> DapUiToogle <CR>", { desc = "Toggle debugger UI" })

-- user - term runner
map({ "n", "i" }, "<F5>", function()
  require "configs.nvchad-term-runner"
end, { desc = "User execute code" })
