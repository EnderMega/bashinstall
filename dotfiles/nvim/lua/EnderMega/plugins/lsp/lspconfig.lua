return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		--TODO: O negócio de renomear includes, o de baixo, pelo visto não está funcionando no momento
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				-- "Atalhos"
				opts.desc = "Mostra referências"
				keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Vá para a declaração"
				keymap.set("n", "gf", vim.lsp.buf.declaration, opts)

				opts.desc = "Vá para definição"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Mostrar definições(implimentação) do LSP"
				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Mostra definição de tipo"
				keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "Veja ações disponíveis no código"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				-- Renomeia todas as referências da variável renomeada
				opts.desc = "Renomear inteligente"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Mostrar diagnósticos do buffer"
				keymap.set("n", "<leader>gD", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
				opts.desc = "Mostrar diagnósticos da linha"
				keymap.set("n", "<leader>gd", vim.diagnostic.open_float, opts)

				-- Não tenho certeza para avisos, etc.; mas estes "diagnósticos" são(podem ser) erros.
				-- Que? kkk
				opts.desc = "Vá para o diagnóstico anterior"
				keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

				opts.desc = "Vá para o próximo diagnóstico"
				keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

				opts.desc = "Mostrar documentação para o que está abaixo do cursor"
				keymap.set("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "Reiniciar LSP"
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
			end,
		})

		-- Habilitar auto-completagem
		local capabilities = cmp_nvim_lsp.default_capabilities()

		local signs = { Error = " ", Warn = " ", Hint = " ", Info = " "}
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- mason_lspconfig.setup_handlers({
		mason_lspconfig.setup({
			function(nome_servidor)
				lspconfig[nome_servidor].setup({
					capabilities = capabilities,
				})
			end,

			-- Para outros casos específicos, adiciona-los aqui

			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							-- make the language server recognize "vim" global
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
		})
	end,
}
