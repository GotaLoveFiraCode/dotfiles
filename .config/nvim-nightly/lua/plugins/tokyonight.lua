return {
	'folke/tokyonight.nvim',
	lazy = true,
	opts = {
		style = "storm",
		transparent = false,
		styles = {
			comments = { italic = true },
			keywords = { italic = true },
			parameters = { italic = true },
			conditionals = { italic = true },
			sidebars = "transparent",
			floats = "normal",
		},
		hide_inactive_statusline = true,
		lualine_bold = true,
	}
}
