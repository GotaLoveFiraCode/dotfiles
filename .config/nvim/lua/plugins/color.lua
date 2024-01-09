return {
	'norcalli/nvim-colorizer.lua',
	config = true,
	keys = {
		{ '<leader>ct', vim.cmd.ColorizerToggle },
		{ '<leader>cc', vim.cmd.ColorizerReloadAllBuffers }
	}
}
