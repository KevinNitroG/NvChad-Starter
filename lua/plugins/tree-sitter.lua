local plugin = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"python", "cpp", "lua", "yaml", "markdown"},
    },
  },
}

return plugin
