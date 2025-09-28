return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		local map = vim.keymap.set

		map("n", "<leader>hh", function() harpoon:list():add() end)
		map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

		map("n", "<leader>he", function() harpoon:list():remove() end)

		map("n", "<C-f>", function() harpoon:list():select(1) end)
		map("n", "<C-g>", function() harpoon:list():select(2) end)
		map("n", "<C-n>", function() harpoon:list():select(3) end)
		map("n", "<C-m>", function() harpoon:list():select(4) end)

		map("n", "<leader>w", function() harpoon:list():prev() end)
		map("n", "<leader>e", function() harpoon:list():next() end)
	end
}
