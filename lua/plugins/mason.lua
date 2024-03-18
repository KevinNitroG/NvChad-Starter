local plugin = {
  {
    "williamboman/mason.nvim",
    opts = function()
      local conf = require("nvchad.configs.mason")
      conf.ensure_installed = {
        "lua-language-server",
        "stylua",
        "typescript-language-server",
        "eslint_d",
        "js-debug-adapter",
        "eslint_lsp",
        -- "prettier",
        "prettierd",
        "clangd",
        "codelldb",
        "clang-format",
        "cpplint",
        "ruff-lsp",
        "debugpy",
        "ruff",
      }
      return conf
    end,
  },
}
return plugin
