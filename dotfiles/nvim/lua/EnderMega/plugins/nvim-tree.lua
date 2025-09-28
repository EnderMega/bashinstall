return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true
			},
			renderer = {
				indent_markers = {
					enable = true
				},
				-- icons = {
				-- 	glyphs = {
				-- 		folder = {
				-- 			arrow_closed = "",
				-- 			arrow_open = ""
				-- 		}
				-- 	}
				-- }
			},

			-- Desabilitar window_picker parar o explorer funcionar bem com divisórias de janelas
			actions = {
				open_file = {
					window_picker = {
						enable = false
					}
				}
			},
			filters = {
				custom = { ".DS_Store" }
			},
			git = {
				ignore = false
			},
		})
		local keymap = vim.keymap.set

		keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Abrir explorador de arquivos" })
		keymap("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Abrir explorador de arquivos no arquivo atual" })
		keymap("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Colapsar explorador de arquivos" })
		keymap("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Atualizar explorador de arquivos" })
	end
}
