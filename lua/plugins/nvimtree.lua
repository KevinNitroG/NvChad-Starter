return {
  {
    "nvim-tree/nvim-tree.lua",
    init = function()
      dofile(vim.g.base46_cache .. "nvimtree")
    end,
    opts = {
      view = {
        number = true,
        relativenumber = true,
        width = 40,
      },
      filters = {
        enable = true,
        dotfiles = false,
        git_ignored = false,
        exclude = {
          ".github",
          ".*test.*",
        },
        custom = {
          ".DS_Store",
          "thumbs.db",
          ".*.exe$",
          ".*LICENSE.*",
          "*.SECURITY.*",
          ".*yarn.lock",
          ".*package.json",
          ".*lazy-lock.json",
          ".*.bak$",
          ".*.git",
          ".*.idea",
          ".*node_modules",
          ".*__pycache__",
          ".*.ruff_cache$",
          ".*build",
          ".*dist",
          ".*.spec$",
          ".*.venv",
          ".*.vs",
          ".*.vscode",
        },
      },
    },
  },
}
