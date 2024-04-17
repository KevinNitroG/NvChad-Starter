return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>cR",
        function()
          require("refactoring").select_refactor()
        end,
        mode = { "v", "n" },
        noremap = true,
        silent = true,
        expr = false,
        desc = "Refactor select",
      },
    },
    config = function()
      require("refactoring").setup()
    end,
  },
}
