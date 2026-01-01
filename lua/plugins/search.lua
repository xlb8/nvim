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
		config = function()
			-- 1. 换一个不冲突的快捷键 (推荐 leader + j)
			vim.keymap.set("n", "<leader>j", ":AnyJump<CR>", { noremap = true, desc = "AnyJump Definition" })
			vim.keymap.set("x", "<leader>j", ":AnyJumpVisual<CR>", { noremap = true, desc = "AnyJump Visual" })

			-- 2. 核心：忽略 Python 虚拟环境和 Git 目录
			-- 这能极大提升速度，防止卡死
			vim.g.any_jump_ignored_files = { ".git", "node_modules", ".venv", "venv", "__pycache__" }
			
			-- 3. 其他 UI 配置
			vim.g.any_jump_disable_default_keybindings = true
			vim.g.any_jump_window_width_ratio = 0.9
			vim.g.any_jump_window_height_ratio = 0.9
			
			-- 4. 强制使用 rg
			vim.g.any_jump_search_prefered_engine = "rg"
		end
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
