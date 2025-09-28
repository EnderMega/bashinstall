return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")

		local map = vim.keymap.set

		map("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Pular para próximo TODO" })

		map("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Pular para TODO anterior" })

		todo_comments.setup()
	end
}
