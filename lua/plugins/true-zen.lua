return {
  {
    "pocco81/true-zen.nvim",
    enabled = true,
    keys = {
      {
        "<leader>za",
        function()
          require("true-zen.ataraxis").toggle()
        end,
        desc = "Toggle Ataraxis",
      },
      {
        "<leader>zm",
        function()
          require("true-zen.minimalist").toggle()
        end,
        desc = "Toggle Minimalist",
      },
      {
        "<leader>zn",
        function()
          require("true-zen.narrow").toggle()
        end,
        desc = "Toggle Narrow",
      },
      {
        "<leader>zn",
        ":'<,'>TZNarrow<CR>",
        mode = "v",
        desc = "Toggle Narrow (Visual)",
      },
      {
        "<leader>zf",
        function()
          require("true-zen.focus").toggle()
        end,
        desc = "Toggle Focus",
      },
    },
    opts = {
      integrations = {
        tmux = false,
        kitty = {
          enabled = false,
          font = "+3",
        },
        twilight = false,
        lualine = false,
      },
    },
  },
}
