local split = function()
	vim.cmd("set splitbelow")
	vim.cmd("sp")
	vim.cmd("res -5")
end
local compileRun = function()
	vim.cmd("w")
	local ft = vim.bo.filetype
	if ft == 'python' then
		split()
		vim.cmd("term python3 %")
	else
		vim.notify("Compile/run is only configured for Python files", vim.log.levels.INFO)
	end
end

vim.keymap.set('n', 'r', compileRun, { silent = true })
