return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	opts = {
		focus = true,
	},
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Abrir/Fechar lista Trouble" },
		{ "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Abrir diagnosticos da área de trabalho com Trouble" },
		{ "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Abrir lista de correções rápidas do Trouble" },
    	{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Abrir lista de locais do Trouble" },
    	{ "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Abrir/Fechar TODOS no Trouble" },
	},
}
