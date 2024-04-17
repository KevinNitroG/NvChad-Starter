return {
  {
    "folke/which-key.nvim",
    opts = {
      plugins = {
        spelling = {
          enable = false,
        },
      },
      window = {
        border = "single",
      },
      layout = {
        align = "left",
      },
      defaults = {
        ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>l"] = { name = "+LSP" },
        ["<leader>m"] = { name = "+mark" },
        ["<leader>p"] = { name = "+pick" },
        ["<leader>r"] = { name = "+rename/relative" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>t"] = { name = "+theme" },
        ["<leader>u"] = { name = "+ui" },
        ["<leader>w"] = { name = "+whichkey/workspace" },
      },
    },
    init = function()
      dofile(vim.g.base46_cache .. "whichkey")
    end,
  },
}
