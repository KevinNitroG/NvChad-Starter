return {
  {
    "williamboman/mason.nvim",
    keys = { { "<leader>cm", "<cmd>Mason<CR>", desc = "Mason" } },
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "typescript-language-server",
        "actionlint",
        "yaml-language-server",
        "eslint-lsp",
        "eslint_d",
        "prettierd",
        "json-lsp",
        "markdownlint",
        "marksman",
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
