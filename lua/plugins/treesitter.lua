local plugin = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local conf = require "nvchad.configs.treesitter"
      conf.ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "cpp",
        "yaml",
        "markdown"
      }
      return conf
    end;
  },
}
return plugin
