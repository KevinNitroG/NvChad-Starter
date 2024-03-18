local options = {
  lsp_fallback = true,
  formatters_by_ft = {
    lua = { "stylua" },
    python = {
      "ruff_fix",
      "ruff_format",
    },
    cpp = { "clang_format" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    angular = { "prettierd" },
    css = { "prettierd" },
    flow = { "prettierd" },
    graphql = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    jsx = { "prettierd" },
    less = { "prettierd" },
    markdown = { "prettierd" },
    scss = { "prettierd" },
    vue = { "prettierd" },
    yaml = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
