-- please read through this file and change what you need to change

vim.g.snips_author = 'ybl'

vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/venv/bin/python")

vim.g.mkdp_browser = 'chromium'

-- vim.g.codelldb_path = 'TODO'

-- 跨平台自动设置 mkdp_browserfunc
if vim.fn.has("mac") == 1 then
  -- macOS 用 open
  vim.g.mkdp_browserfunc = 'open %s'
elseif vim.fn.has("unix") == 1 then
  -- Linux 用 xdg-open
  vim.g.mkdp_browserfunc = 'xdg-open %s'
elseif vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
  -- Windows 用 start
  vim.g.mkdp_browserfunc = 'start %s'
else
  -- 默认 fallback
  vim.g.mkdp_browserfunc = ''
end

