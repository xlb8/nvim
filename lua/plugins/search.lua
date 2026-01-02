return {
	{
		"kevinhwang91/nvim-hlslens",
		lazy = false,
		enabled = true,
		keys = {
			{
				"=",
				[[<cmd>execute('normal! ' . v:count1 . 'n')<cr>]] .. [[<cmd>lua require("hlslens").start()<cr>]],
			},
			{
				"-",
				[[<cmd>execute('normal! ' . v:count1 . 'N')<cr>]] .. [[<cmd>lua require("hlslens").start()<cr>]],
			},
			{ "*",  "*" .. [[<cmd>lua require("hlslens").start()<cr>]] },
			{ "#",  "#" .. [[<cmd>lua require("hlslens").start()<cr>]] },
			{ "g*", "g*" .. [[<cmd>lua require("hlslens").start()<cr>]] },
			{ "g#", "g#" .. [[<cmd>lua require("hlslens").start()<cr>]] },
		},
		config = function()
			require("scrollbar.handlers.search").setup()
		end
	},
	{
	"pechorin/any-jump.vim",

	-- 👈 关键：插件加载前
	init = function()
		vim.g.any_jump_disable_default_keybindings = true
		vim.g.any_jump_ignored_files = {
		".git", "node_modules", ".venv", "venv", "__pycache__"
		}
		vim.g.any_jump_window_width_ratio = 0.9
		vim.g.any_jump_window_height_ratio = 0.9
		vim.g.any_jump_search_prefered_engine = "rg"
	end,

	-- 👈 插件加载后：只放 keymap
	config = function()
		vim.keymap.set("n", "gj", ":AnyJump<CR>", {
		desc = "AnyJump Definition"
		})
		vim.keymap.set("x", "gj", ":AnyJumpVisual<CR>", {
		desc = "AnyJump Visual"
		})
	end,
	},
	{
		"MagicDuck/grug-far.nvim",
		keys = {
			{
				"<leader>F",
				mode = "n",
				function()
					vim.cmd(":GrugFar")
				end,
				desc = "Project find and replace"
			}
		},
		config = function()
			require('grug-far').setup({});
		end
	},
}
