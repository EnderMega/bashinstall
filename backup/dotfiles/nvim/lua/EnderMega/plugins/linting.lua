return {
--	"mfussenegger/nvim-lint",
--	even = { "BufReadPre", "BufNewFile" },
--	config = function ()
--		local lint = require("lint")

--		lint.linters_by_ft = {
--			cpp = { "cpplint" },
--			c = { "cpplint" },
--			python = { "pylint" },
--		}

--		local lint_augroup = vim.api.nvim_create_augroup("ling", { clear = true })

--		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
--			group = lint_augroup,
--			callback = function()
--				lint.try_lint()
--			end,
--		})

--		vim.keymap.set("n", "<leader>l", function ()
--			lint.try_lint()
--		end, { desc = "Dispara linting parar o arquivo atual" })
--	end,
}
