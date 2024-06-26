return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = "ConformInfo",
    dependencies = { "mason.nvim" },
    opts = {
      formatters_by_ft = {
        python = {
          "ruff_fix",
          "ruff_format",
          -- "isort",
        },
        cpp = { "clang_format" },
        c = { "clang_format" },
        ["c#"] = { "clang_format" },
        lua = { "stylua" },
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
        timeout_ms = 2000,
        lsp_fallback = true,
        async = false,
        quiet = false,
      },
    },
  },
}
