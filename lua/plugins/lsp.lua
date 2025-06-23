return {
	{
		"folke/trouble.nvim",
		opts = {
			use_diagnostic_signs = true,
			action_keys = {
				close = "<esc>",
				previous = "u",
				next = "e"
			},
		},
	},
	{
		'williamboman/mason.nvim',
		build = function()
			vim.cmd([[MasonInstall]])
		end,
	},
	{ 'williamboman/mason-lspconfig.nvim' },
}
