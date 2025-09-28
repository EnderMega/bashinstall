return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" }, -- Lazy load nessas ações
	build = ":TSUpdate",

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		-- Highlight
		treesitter.setup({
			highlight = {
				enable = true,
			},
			-- Identação
			indent = { enable = true },

			-- Linguagens para instalar
			ensure_installed = {
				-- Os brabo
				"c",
				"cpp",
				"asm",
				"nasm",
				--"disassembly",
				
				-- _Coisas_
				--"java",
				"lua",
				"python",
				-- Extra
				"typescript",
				
				--"latex", -- Precisa de outra coisa para LaTex funcionar
				"cuda",
			},
			incremental_selection = {
				enable = true,
				keymap = {
					-- As coisas são divididas em nodos, então o que isso faz é poder
					-- ir selecionando coisas que pertêncem ao nodo.
					init_selection = "<C-space>", -- Selecionar pela primeira vez
					node_incremental = "<C-space>", -- Selecionar próxima parte do nodo
					scope_incremental = false,
					node_decremental = "<bs>", -- Selecionar parte anterior do nodo
				},
			},
		})
	end
}
