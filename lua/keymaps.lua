vim.g.mapleader = " "
vim.g.maplocalleader = ','
vim.g.myvimrc = vim.fn.stdpath('config') .. '/init.lua'
vim.env.MYVIMRC = vim.g.myvimrc
local mode_nv = { "n", "v" }
local mode_v = { "v" }
-- local mode_i = { "i" }
local nmappings = {
	{ from = "S",             to = ":w<CR>:w<CR>" },
	{ from = "Q",             to = ":q<CR>" },
-- 	{ from = "p",             to = ":",                                                                   mode = mode_nv },
	{ from = "O",             to = "\"+y",                                                                mode = mode_v },
	{ from = "`",             to = "~",                                                                   mode = mode_nv },
	{ from = '>',             to = '>gv',                                                                   mode = mode_v },
	{ from = '<',             to = '<gv',                                                                   mode = mode_v },
	{ from = "`",             to = "~",                                                                   mode = mode_nv },
	{ from = "g`",             to = "g~",                                                                 mode = mode_nv },
	{ from = "R",             to = ":source $MYVIMRC | echo 'Configuration Reloaded!'<CR>",        mode = mode_nv },

-- 	-- Movement
-- 	{ from = "i",             to = "k",                                                                   mode = mode_nv },
-- 	{ from = "k",             to = "j",                                                                   mode = mode_nv },
-- 	{ from = "j",             to = "h",                                                                   mode = mode_nv },
-- 	{ from = "l",             to = "l",                                                                   mode = mode_nv },
-- 	{ from = "I",             to = "5k",                                                                  mode = mode_nv },
-- 	{ from = "K",             to = "5j",                                                                  mode = mode_nv },
-- 	{ from = "J",             to = "0",                                                                   mode = mode_nv },
-- 	{ from = "L",             to = "$",                                                                   mode = mode_nv },
-- 	{ from = "ti",            to = "gk",                                                                  mode = mode_nv },
-- 	{ from = "tk",            to = "gj",                                                                  mode = mode_nv },
-- 	{ from = "h",             to = "e",                                                                   mode = mode_nv },
-- 	{ from = "<C-U>",         to = "5<C-y>",                                                              mode = mode_nv },
-- 	{ from = "<C-E>",         to = "5<C-e>",                                                              mode = mode_nv },
-- 	{ from = "cl",            to = "cl", },
-- 	{ from = "cj",            to = "ch", },
-- 	{ from = "cn",            to = "ci", },
-- 	{ from = "c,.",           to = "c%", },
-- 	{ from = "oh",            to = "ye", },

-- 	-- Actions
-- 	{ from = "u",             to = "u" },
-- 	{ from = "n",             to = "i",                                                                   mode = mode_nv },
-- 	{ from = "N",             to = "I",                                                                   mode = mode_nv },

-- 	-- Useful actions
-- 	{ from = ",.",            to = "%",                                                                   mode = mode_nv },
-- 	{ from = "<c-y>",         to = "<ESC>A {}<ESC>i<CR><ESC>ko",                                          mode = mode_i },
-- 	{ from = "\\v",           to = "v$h", },
-- 	{ from = "<c-a>",         to = "<ESC>A",                                                              mode = mode_i },

-- 	-- Window & splits
	{ from = "<leader>w",     to = "<C-w>w", },
	{ from = "<leader>k",     to = "<C-w>k", },
	{ from = "<leader>j",     to = "<C-w>j", },
	{ from = "<leader>h",     to = "<C-w>h", },
	{ from = "<leader>l",     to = "<C-w>l", },
	{ from = "qe",            to = "<C-w>o", },
	-- { from = "d",             to = "<nop>", },
	{ from = "sk",            to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", },
	{ from = "sj",            to = ":set splitbelow<CR>:split<CR>", },
	{ from = "sh",            to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", },
	{ from = "sl",            to = ":set splitright<CR>:vsplit<CR>", },
	{ from = "<up>",          to = ":res +5<CR>", },
	{ from = "<down>",        to = ":res -5<CR>", },
	{ from = "<left>",        to = ":vertical resize-5<CR>", },
	{ from = "<right>",       to = ":vertical resize+5<CR>", },
-- 	-- { from = "dh",            to = "se", },
-- 	-- { from = "dh",            to = "<C-w>t<C-w>K", },
-- 	-- { from = "dv",            to = "<C-w>t<C-w>H", },
-- 	{ from = "dsh",           to = "<C-w>b<C-w>K", },
-- 	{ from = "dsv",           to = "<C-w>b<C-w>H", },

-- 	-- Tab management
-- 	{ from = "fi",            to = ":tabe<CR>", },
-- 	{ from = "fI",            to = ":tab split<CR>", },
-- 	{ from = "fj",            to = ":-tabnext<CR>", },
-- 	{ from = "fl",            to = ":+tabnext<CR>", },
-- 	{ from = "fmj",           to = ":-tabmove<CR>", },
-- 	{ from = "fml",           to = ":+tabmove<CR>", },

-- 	-- Other
-- 	{ from = "<leader>dw",    to = ":set wrap<CR>" },
-- 	{ from = "<leader>dc",    to = ":set spell!<CR>" },
-- 	{ from = "<leader><CR>",  to = ":nohlsearch<CR>" },
-- 	{ from = "<f10>",         to = ":TSHighlightCapturesUnderCursor<CR>" },
-- 	{ from = "<leader>;",     to = "za" },
-- 	{ from = "<leader>rs",    to = ":profile start profile.log<CR>:profile func *<CR>:profile file *<CR>" },
-- 	{ from = "<leader>sc",    to = ":e ~/.config/nvim/init.lua<CR>" },
-- 	{ from = "<leader>sv",    to = ":e .vim.lua<CR>" },
-- 	{ from = ",v",            to = "v%" },
-- 	{ from = "<leader><esc>", to = "<nop>" },

-- 	-- Joshuto
-- 	{ from = "S",             to = ":Joshuto<CR>" },
}

-- vim.keymap.set("n", "q", "<nop>", { noremap = true })
-- vim.keymap.set("n", ",q", "q", { noremap = true })

for _, mapping in ipairs(nmappings) do
	vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true})
end

-- local function run_vim_shortcut(shortcut)
-- 	local escaped_shortcut = vim.api.nvim_replace_termcodes(shortcut, true, false, true)
-- 	vim.api.nvim_feedkeys(escaped_shortcut, 'n', true)
-- end

-- -- close win below
-- vim.keymap.set("n", "<leader>q", function()
-- 	require("trouble").close()
-- 	local wins = vim.api.nvim_tabpage_list_wins(0)
-- 	if #wins > 1 then
-- 		run_vim_shortcut([[<C-w>j:q<CR>]])
-- 	end
-- end, { noremap = true, silent = true })
