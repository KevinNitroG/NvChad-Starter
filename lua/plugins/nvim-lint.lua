local plugin = {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  -- enabled = false,
  config = function ()
    require "configs.nvim-lint"
  end,
}
return plugin
