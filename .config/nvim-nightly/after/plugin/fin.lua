vim.api.nvim_create_user_command('Fin',
	function(opts)
		vim.cmd.edit(opts.fargs[1])
	end,
	{
		nargs = 1,
		complete = function(ArgLead, CmdLine, CursorPos)
				local cmd = "fd -t f -g '" .. ArgLead .. "'"
				local results = vim.fn.systemlist(cmd)
				return results
			end
	}
)

