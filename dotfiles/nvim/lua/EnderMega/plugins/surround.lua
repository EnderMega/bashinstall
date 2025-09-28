-- Envolver palavras com "coisa"
return {
	"kylechui/nvim-surround",
	envent = { "BufReadPre", "BufNewFil" },
	version = "*",
	config = true,
}
-- ys(motion)(com o que quer envolver). Exp.: ysiw" envolve uma palavra inteira em baixo do cursor
-- ds(o que quer excluir). Excluir
-- cs(o que quer substituir)(com o que).
