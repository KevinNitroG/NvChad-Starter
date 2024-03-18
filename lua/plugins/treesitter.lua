local plugin = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local conf = require("nvchad.configs.treesitter")
      conf.ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "python",
        "requirements",
        "cpp",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "yaml",
        "toml",
        "markdown",
        "gitignore",
        "gitcommit",
        "git_config",
        "gitattributes",
        "git_rebase",
        "ini",
        "json",
        "regex",
      }
      return conf
    end,
  },
}
return plugin
