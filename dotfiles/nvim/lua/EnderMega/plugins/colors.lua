--TODO: Linha em baixo de controladores de fluxo estão difícies de enxergar
-- Nâo está mostrando com cores diferentes o indente-blanklines quando estamos dentro da identação.
-- Mudar a cor do indicador de arquivo não salvo para verde
-- Talvez mudar um pouco para que pareça mais com o Visual Studio 20xx, e não com o VSCode.
return {
	"Mofiqul/vscode.nvim",
	priority = 1000,

	config = function ()
		require("vscode").setup({
			transparent = true,
			italic_comments = true,
		})

		require("bufferline").setup({
			options = {
				mode = "tabs",
				-- modified_icon = "●",
			},
		})

		vim.cmd("colorscheme vscode")
	end
}
