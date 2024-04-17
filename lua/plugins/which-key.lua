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
          c = { name = "+Code" },
          f = { name = "+File" },
          g = { name = "+Git" },
          l = { name = "+lSP" },
          m = { name = "+Mark" },
          N = { name = "+Noice" },
          p = { name = "+Pick" },
          r = { name = "+Rename / Relative" },
          s = { name = "+Search" },
          t = { name = "+Theme" },
          T = { name = "+Trouble" },
          u = { name = "+UI" },
          w = { name = "+Whichkey / Workspace" },
        },
      }
    end,
  },
}
