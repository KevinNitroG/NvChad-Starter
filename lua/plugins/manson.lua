local plugin = {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"prettier",
				"clangd",
				"clang-format",
				"ruff-lsp",
				"ruff",
				"stylua",
			},
		},
	},
}

return plugin
