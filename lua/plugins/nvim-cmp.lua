return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "zbirenbaum/copilot.lua",
      "zbirenbaum/copilot-cmp",
      "danymat/neogen",
      "L3MON4D3/LuaSnip",
    },
    opts = function(_, opts)
      opts.window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      }
      table.insert(opts.sources, { name = "emoji" })
      opts.mapping = vim.tbl_extend("force", opts.mapping, require "configs.supertab")
    end,
    init = function()
      dofile(vim.g.base46_cache .. "cmp")
    end,
  },
  { "zbirenbaum/copilot-cmp" },
}
