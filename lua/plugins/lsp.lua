return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "typescript-language-server",
        "actionlint",
        "yaml-language-server",
        "prettierd",
        "json-lsp",
        "markdownlint",
        "clangd",
        "clang-format",
        "cpplint",
        "pyright",
        "ruff",
        "ruff-lsp",
        "isort",
        "debugpy",
        "powershell-editor-services",
        "cspell",
      },
      ui = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      require("lspconfig.ui.windows").default_options.border = "rounded"
    end,
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
}
