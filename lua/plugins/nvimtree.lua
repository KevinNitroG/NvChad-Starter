local plugin = {
  {
    "nvim-tree/nvim-tree.lua",
    opt = function()
      local conf = require "nvchad.configs.nvimtree"
      local custom_conf = require "configs.nvimtree"
      conf.git = custom_conf.git
      return conf
    end,
  }
}
return plugin
