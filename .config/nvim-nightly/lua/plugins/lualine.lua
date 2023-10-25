return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
			theme = "catppuccin",
			-- section_separators   = { left = '',  right = ''  },
			component_separators = { left = '→',  right = '←' },
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {'filename', 'filesize'},
			lualine_x = {'encoding', 'fileformat', 'filetype'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
		},
		inactive_sections = {
			lualine_c = {'filename'},
			lualine_x = {'location'},
		},
		tabline = {
			lualine_a = {'buffers'},
			lualine_y = {'windows'},
			lualine_z = {'tabs'},
		},
		extensions = { 'lazy', 'quickfix' }
	}
}
