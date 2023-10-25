return {
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	event = 'BufReadPre',
	config = function()
		require'ibl'.setup({
			indent = {
				char = '▏',
			},
			scope = {
				enabled = true,
				show_end = false,
				show_start = false,
				highlight = 'LineNr'
			},
		})
	end,
}
