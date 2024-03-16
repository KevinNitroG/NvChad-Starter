local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },
  },

  python = {
    "ruff_fix",
    "ruff_format",
  },
}

require("conform").setup(options)
