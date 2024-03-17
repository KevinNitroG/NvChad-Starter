local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		python = {
			"ruff_fix",
			"ruff_format",
		},

		cpp = { "clang_format" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)
