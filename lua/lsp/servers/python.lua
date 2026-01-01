local M = {}

function M.setup()
	-- Pyright Language Server
	vim.lsp.config('pyright', {
		cmd = { 'pyright-langserver', '--stdio' },
		filetypes = { 'python' },
		root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', 'pyrightconfig.json', '.git' },
		settings = {
			python = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					useLibraryCodeForTypes = true
				}
			}
		}
	})


	vim.lsp.config('ruff', {
		cmd = { 'ruff', 'server' },
		filetypes = { 'python' },
		root_markers = { 'pyproject.toml', '.git', 'ruff.toml' },
		settings = {
			-- 关键设置：告诉 Ruff 优先读取文件系统中的配置文件
			-- 如果找到了 pyproject.toml，它会覆盖或根据规则合并这里的 settings
			configurationPreference = "filesystemFirst",
			
			lint = {
				-- 这些是你希望在没有文件时生效的默认值
				extendSelect = { "I", "E" },
				ignore = { "F401", "F403", "F405" },
			},
			logLevel = "debug",
		}
	})

	vim.lsp.enable({ 'pyright', 'ruff' })

end

return M