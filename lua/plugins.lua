local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

vim.keymap.set("n", "<leader>pl", ":Lazy<CR>", { noremap = true })

require("lazy").setup({
	require("plugins.yank"),
	require("plugins.telescope").config,
	require("plugins.fzf"),
	require("plugins.ui"),
	require("plugins.statusline"),
	require("plugins.editor"),
	require("plugins.scrollbar"),
	require("plugins.tabline"),
	require("plugins.autocomplete").config,
	require("plugins.debugger"),
	require("plugins.lsp"),
	require("plugins.treesitter"),
	require("plugins.comment"),
	require("plugins.surround"),
	require("plugins.project"),
	require("plugins.wilder"),
	require("plugins.multi-cursor"),
	-- require("plugins.copilot"),
	require("plugins.markdown"),
	require("plugins.git"),
	-- require("plugins.indent"),
	require("plugins.search"),
	require("plugins.snippets"),
	require("plugins.window-management"),
	require("plugins.undo"),
	require("plugins.fun"),
	require("plugins.winbar"),
	require("plugins.leap"),
	require("plugins.yazi"),
	{ 
		"dstein64/vim-startuptime",
	},
	{
		"nvim-neorg/neorg",
		enabled = false,  -- 直接禁用，不加载这个插件
		lazy = false,
		rocks = {
		"nvim-nio ~> 1.7",
		"lua-utils.nvim == 1.0.2",
		"plenary.nvim == 0.1.4",
		"nui.nvim == 0.3.0",
		"pathlib.nvim ~> 2.2",
		},
		build = false, -- disable the build script that currently uses luarocks.nvim
		opts = {},
  	}
})

-- require("custom_plugins.vertical_cursor_movement")

-- local swap_ternary = require("custom_plugins.swap_ternary")
-- vim.keymap.set("n", "<leader>st", swap_ternary.swap_ternary, { noremap = true })

-- require("custom_plugins.compile_run")
