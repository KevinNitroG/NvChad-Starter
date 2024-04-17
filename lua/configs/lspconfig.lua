local configs = require "nvchad.configs.lspconfig"

local servers = {
  html = {},
  marksman = {},
  eslint = {},
  clangd = {},
  jsonls = {},
  powershell_es = {
    cmd = {
      "pwsh",
      "-NoLogo",
      "-NoProfile",
      "-Command",
      "&",
      vim.fn.stdpath "data"
        .. "mason/packages/powershell-editor-services/PowerShellEditorServices/Start-EditorServices.ps1",
      "-BundledModulesPath",
      vim.fn.stdpath "data" .. "mason/packages/powershell-editor-services",
    },
    single_file_support = true,
  },
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
