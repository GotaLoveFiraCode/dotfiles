return {
	'norcalli/nvim-colorizer.lua',
	config = true,
	keys = {
		{ '<leader>ct', vim.cmd.ColorizerToggle, desc = "toggle Colorizer" },
		{ '<leader>cc', vim.cmd.ColorizerReloadAllBuffers, desc = "refresh Colorizer" }
	}
}
