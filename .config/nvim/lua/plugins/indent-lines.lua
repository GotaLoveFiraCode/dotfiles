return {
	'lukas-reineke/indent-blankline.nvim',
	event = 'VeryLazy',
	main = 'ibl',
	opts = {
		indent = {
			char = '▏'
		},
		scope = {
			enabled = true,
			show_end = false,
			show_start = false
		}
	}
}
