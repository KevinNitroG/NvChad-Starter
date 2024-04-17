local configs = require "nvchad.configs.lspconfig"

local servers = {
  html = {},
  clangd = {},
  jsonls = {},
  powershell_es = {},
  pyright = {},
  ruff_lsp = {
    server_capabilities = {
      hoverProvider = false,
    },
  },
  tsserver = {},
  yamlls = {},
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
