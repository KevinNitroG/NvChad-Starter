return {
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "astro",
      "glimmer",
      "handlebars",
      "html",
      "htmx",
      "javascript",
      "jsx",
      "markdown",
      "php",
      "rescript",
      "svelte",
      "tsx",
      "typescript",
      "vue",
      "xml",
    },
    init = function()
      vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {
          spacing = 5,
          severity_limit = "Warning",
        },
        update_in_insert = true,
      })
    end,
  },
}
