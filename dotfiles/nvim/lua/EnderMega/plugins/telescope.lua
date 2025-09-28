return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
		defaults = {
			path_display = { "smart" },
			mappings = {
				i = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
					--["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		local map = vim.keymap.set
		map("n", "<leader>ff", builtin.find_files)
		map("n", "<leader>fr", builtin.oldfiles) -- Arquivos recentes
		map("n", "<leader>fs", builtin.live_grep) -- Procurar por strings em arquivos
		map("n", "<leader>fc", builtin.grep_string) -- Procurar pela string abaixo do cursor
		map("n", "<leader>ft", "<cmd>TodoTelescope<CR>")
	end
}
