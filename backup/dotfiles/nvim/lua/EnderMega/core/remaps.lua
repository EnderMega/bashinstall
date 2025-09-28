-- &**************************************************************************************&
-- Não sei quando esse arquivo foi propriamente criado,
--  mas foi em meados de Junho de 2024.
-- &**************************************************************************************&

vim.g.mapleader = " "

local map = vim.keymap.set

-- map("n", "<leader>pe", vim.cmd.Ex)	-- Não funciona com o nvim-tree

map({"i", "v"}, "~~", "<ESC>", { desc = "Sair do modo 'insert' e 'visual' com ~~"})
map("i", "jj", "<ESC>", { desc = "Sair do modo 'insert' com jj"})

-- Manejamento de janelas
map("n", "<leader>dv", "<C-w>v") -- Dividir janela verticalment
map("n", "<leader>dh", "<C-w>s") -- Dividir janela horizontalmente
map("n", "<leader>di", "<C-w>=") -- Igualar o tamanho das janelas
map("n", "<leader>df", "<cmd>close<Cr>") -- Fechar a divisão atual

map("n", "<leader>aa", "<cmd>tabnew<CR>")
map("n", "<leader>af", "<cmd>tabclose<CR>")
map("n", "<leader>ap", "<cmd>tabn<CR>") -- Próxima aba
map("n", "<leader>ao", "<cmd>tabp<CR>") -- Aba anterior
map("n", "<leader>at", "<cmd>tabnew %<CR>") -- Abrir buffer atual (arquivo atual) em uma nova aba

-- Inverter 'j' e 'k'
-- map({"n", "v"}, "j", "k")
-- map({"n", "v"}, "k", "j")

--TODO:Não lembro o que isso faz
map("n", "<ESC>", "<cmd>noh<CR>") -- Limpar os destaques de procura

-- Mover texto marcado entre linhas
map("v", "K", ":m '>+1<CR>gv=gv")
map("v", "J", ":m '<-2<CR>gv=gv")

-- Mover linha de baixo para a linha atual
-- map("n", "J", "mzJ'z")

map("n", "o", "o<ESC>")
map("n", "O", "O<ESC>")

-- Sair
map("n", "<leader>qq", "<CMD>wqa<CR>", { desc =  "sair e salvar (:wqa)"})
map("n", "<leader>qQ", "<CMD>qa!<CR>", { desc =  "sair sem salvar (:qa!)"})

-- Salvar
map("n", "<leader>ss", "<CMD>w<CR>", { desc = "Salvar" })

-- Ctrl + Backspace
map({"i", "v"}, "<C-BS>", "<C-w>")
map({"i", "v"}, "<C-h>", "<C-w>")

-- Copiar/Colar para/da área de transferência
map({"n", "v"}, "\\p", '"+p', { desc = "Colar depois do cursor"})
map({"n", "v"}, "\\P", '"+P', { desc = "Colar antes do cursor"})
map({"n", "v"}, "\\y", '"+y', { desc = "Copia o texto selecionado ou pede um vim-motion depois"})
map({"n", "v"}, "\\Y", '"+Y', { desc = "Copia a linha atual inteira"})

map("v", "p", '"_dP')

map({"n", "v"}, "dd", '"_dd')
map({"n", "v"}, "d", '"_d')
map("n", "x", '"_x')

map("n", ".", "$")
map("v", ".", "$h")
map("n", "d.", "d$")

map({"n", "v"}, "<leader>", "")



-- "p" cola depois do cursor, "P" antes.
-- A chatice disso é que ao colar no começo de uma linha ele deixa o primeiro caractere da linha e cola todo o seu texto na frente.
-- Mas ao mesmo tempo, inverter faz com que colar no fim da linha fica chato, pq ai tem que apertar o shift.
-- Meio que eu tenho que ver onde eu colo mais.
--map({"n"}, "p", "P")
--map({"n"}, "P", "p")

-- {silent = true} para o não haver echo do comando.

-- # Anotações #
-- Ctrl + o volta de um pulo (ex.: go to definition)
-- Pelo visto Ctrl + t faz algo, similar porém para tags ou arquivos, não sei.
--
-- * em cima de uma palavra realiza uma procura e já dá "enter"
--
-- Usar " tem várias utilidades, como última linha nome do arquivo, última linha apagada, etc.
--
-- Ctrl + x dentro do modo insert(i) tem funções de auto-completagem, mas também de mover a tela.
-- -- i Ctrl + x Ctrl + e/y move a janela para baixo/cima.
-- -- https://neovim.io/doc/user/insert.html#ins-completion
--
-- Ctrl + x/a diminui/aumenta o número abaixo do cursor ... não sei quão útil é, mas existe kkk.
-- -- Olha, eu usei em macro já. É bom pra caso tenho que repetir um mesmo texto mas os números forem incrementando ou decrementando.
