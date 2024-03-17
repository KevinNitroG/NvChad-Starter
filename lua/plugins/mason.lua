local plugin = {
	{
		"williamboman/mason.nvim",
		opts = function ()
			local conf = require "nvchad.configs.mason"
			conf.ensure_installed = {
				"lua-language-server",
				"stylua",
				"prettier",
				"clangd",
				"clang-format",
        "cpplint",
				"ruff-lsp",
				"ruff",
			}
			return conf
		end,
	},
}
return plugin
