-- Configure LSP capabilities for nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Set default capabilities for all LSP servers
vim.lsp.config('*', {
	capabilities = capabilities,
})

-- Configure diagnostics
vim.diagnostic.config({
	underline = true,
	virtual_text = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✘",
			[vim.diagnostic.severity.WARN] = "▲",
			[vim.diagnostic.severity.HINT] = "⚑",
			[vim.diagnostic.severity.INFO] = "»"
		},
	},
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "none", -- Changed from "rounded" to "none"
		source = "if_many",
		header = "",
		prefix = "",
	},
})

-- Set up CursorHold autocommand to show diagnostics on hover
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float({
			focusable = false,
			close_events = {
				"BufLeave",
				"CursorMoved",
				"InsertEnter",
				"FocusLost"
			},
			border = "none", -- Changed from "rounded" to "none"
			source = "if_many",
			prefix = "",
		})
	end
})

-- Set up LspAttach autocmd for per-buffer configuration
local autocomplete_configured = false
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function(event)
		-- Configure autocomplete once (not per buffer)
		if not autocomplete_configured then
			local ok, err = pcall(require("plugins.autocomplete").configfunc)
			if ok then
				autocomplete_configured = true
			else
				vim.notify("Failed to configure autocomplete: " .. tostring(err), vim.log.levels.ERROR)
			end
		end

		-- Set up per-buffer keymaps
		local ok, err = pcall(require('lsp.keymaps').setup, event.buf)
		if not ok then
			vim.notify("Failed to set up LSP keymaps: " .. tostring(err), vim.log.levels.WARN)
		end
	end
})

-- Load server configurations
require('lsp.servers.lua').setup()
require('lsp.servers.python').setup()

require('mason').setup({})
require('mason-lspconfig').setup({
	-- ensure_installed = {
	-- 	"pyright",
	-- },
	automatic_enable = true,
})

-- Format on save
local format_on_save_filetypes = {
	python = true,
}

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.py",
	callback = function()
		if format_on_save_filetypes[vim.bo.filetype] then
			local lineno = vim.api.nvim_win_get_cursor(0)
			vim.lsp.buf.format({ async = false })
			vim.lsp.buf.code_action({
				context = { only = { "source.fixAll.ruff" }, diagnostics = {} },
				apply = true,
			})
			pcall(vim.api.nvim_win_set_cursor, 0, lineno)
		end
	end,
})
