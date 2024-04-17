return {
  {
    "laytan/cloak.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>uc",
        ":CloakToggle<CR>",
        desc = "Cloak Toggle",
      },
    },
    opts = {
      cloak_length = "5",
      patterns = {
        {
          file_pattern = {
            "**/*env*.{json,yml,yaml,toml}",
            "**/*account*.{json,yml,yaml,toml}",
            "**/*credential*.{json,yml,yaml,toml}",
            "**/*password*.{json,yml,yaml,toml}",
            "**/*config*.{json,yml,yaml,toml}",
          },
          cloak_pattern = {
            "=.+",
            "-.+",
            ":.+",
          },
        },
      },
    },
  },
}
