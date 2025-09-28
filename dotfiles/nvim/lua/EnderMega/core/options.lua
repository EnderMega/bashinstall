-- &**************************************************************************************&
-- Não sei quando esse arquivo foi propriamente criado,
--  mas foi em meados de Junho de 2024.
-- &**************************************************************************************&

--vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tab & identação
opt.tabstop = 4
opt.shiftwidth = 4
--opt.expandtab = true -- Expandir tab(s) para espaços
opt.autoindent = true -- Copiar identação atual para a próxima linha

opt.wrap = false

-- Opções de pesquisa
opt.ignorecase = true -- Ignora caso sensitivo quando procurando
opt.smartcase = true -- Se misturar "tipos" de letras, vai assumir que quer caso sensitivo

--opt.cursorline = false -- Adiciona uma linha na linha do cursor

-- opt.termguicolors = true
opt.signcolumn = "yes"

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8

-- Mudar cursor para I-beam
-- Até queriamos, para o último caractere da linha ele fica torto.
-- vim.opt.guicursor = { 'a:ver25' }

-- Copie do ChatGPT, tem que ser função?
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "*",
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
		-- c → quebra automática de comentários (quando a linha passa do textwidth).
		-- r → ao apertar <Enter> em uma linha comentada, inicia a próxima linha já comentada.
		-- o → ao usar o ou O para abrir nova linha, insere automaticamente o mesmo prefixo de comentário.
		--vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end
})
