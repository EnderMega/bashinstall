return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")

		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- Ter certeza que instalou estes
			ensure_installed = {
				"clangd",
				"lua_ls",
				"marksman",
				"bashls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
		-- 		"clang-format",
		-- 		-- "prettier",
		-- 		"stylua",
		-- 		"isort",
		-- 		"black",

		--		"pylint",
		--		"cpplint",
			},
		})
	end,
}
