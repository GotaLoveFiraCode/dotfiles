return {
	"folke/tokyonight.nvim",
	lazy = false, priority = 1000,
	config = function()
		require 'tokyonight'.setup {
			style = 'moon',
			terminal_colors = true,
			transparent = false,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				parameters = { italic = true },
				conditionals = { italic = true },
				sidebars = 'dark',
				floats = 'dark',
			},
			sidebars = {
				'help', 'netrw', 'lazy', 'telescope', 'harpoon',
			},
			hide_inactive_statusline = true,
			lualine_bold = true,
		}
		vim.cmd.colorscheme 'tokyonight'
	end,
}
