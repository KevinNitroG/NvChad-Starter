return {
  "mfussenegger/nvim-lint",
  event = "BufReadPost",
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      python = { "ruff" },
      cpp = { "cpplint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      markdown = { "markdownlint" },
      latex = { "vale" },
    },
  },
  config = function(_, opts)
    require("lint").linters_by_ft = opts.linters_by_ft
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
        -- require("lint").try_lint "cspell"
      end,
    })
  end,
}
