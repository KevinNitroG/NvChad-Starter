return {
  {
    "folke/which-key.nvim",
    opts = {
      plugins = {
        spelling = {
          enable = true,
        },
      },
      window = {
        border = "single",
      },
      layout = {
        align = "left",
      },
    },
    init = function()
      dofile(vim.g.base46_cache .. "whichkey")
    end,
    config = function(_, opts)
      local wk = require "which-key"
      wk.setup(opts)
      wk.register {
        ["<leader>"] = {
          c = {
            name = "+Code",
            d = { vim.diagnostic.open_float, "Lsp floating diagnostics" },
            f = {
              function()
                require("conform").format { lsp_fallback = true }
              end,
              "Conform Format",
            },
          },
          f = { name = "+File" },
          g = { name = "+Git" },
          n = { name = "+Noice" },
          p = { name = "+Pick" },
          r = { name = "+Rename / Reset" },
          s = { name = "+Search" },
          S = { name = "+Spectre" },
          u = {
            name = "+UI",
            C = { "<cmd>NvCheatsheet<CR>", "Toggle NvCheatsheet" },
            l = { "<cmd>set nu!<CR>", "Toggle Line Number" },
            r = { "<cmd>set rnu!<CR>", "Toggle Relative Number" },
            t = { "<cmd>Telescope themes<CR>", "NvChad Themes" },
            w = { "<cmd>set wrap!<CR>", "Toggle Wrap" },
          },
          w = { name = "+Workspace" },
          z = { name = "+Zen" },
        },
      }
    end,
  },
}
