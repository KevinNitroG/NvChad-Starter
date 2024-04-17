return {
  "danymat/neogen",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  cmd = "Neogen",
  keys = {
    {
      "<leader>cn",
      function()
        require("neogen").generate()
      end,
      desc = "Neogen",
    },
  },
  opts = {
    snippet_engine = "luasnip",
    languages = {
      python = {
        template = {
          annotation_convention = "google_docstrings",
        },
      },
      cpp = {
        template = {
          annotation_convention = "doxygen",
        },
      },
    },
  },
}
