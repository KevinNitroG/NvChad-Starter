local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")

local servers = {
  -- "ruff_lsp",
  "pyright",
  "clangd",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- lspconfig.ruff_lsp.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python"},
-- }

-- lspconfig.clangd.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"cpp"},
-- }
