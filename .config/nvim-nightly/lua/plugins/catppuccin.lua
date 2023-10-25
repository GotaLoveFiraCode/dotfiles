return {
	'catppuccin/nvim',
	name = 'catppuccin',
	priority = 10000,
	config = function()
		require'catppuccin'.setup {
			flavour = "mocha",
			transparent_background = false,
			term_colors = true,
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = { "italic" },
				functions = { "bold" },
				keywords = { "bold" },
				strings = {},
				variables = {},
				numbers = {},
			booleans = {},
				properties = { "italic" },
				types = { "italic" },
				operators = {},
			},
			integrations = {
				gitsigns = true,
				treesitter = true,
				-- notify = true,
				alpha = true,
				-- harpoon = true,
				-- headlines = true,
				--[[ indent_blankline = {
				enabled = true,
				scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
				colored_indent_levels = false,
				}, --]]
				-- leap = true,
				-- mason = true,
				-- neogit = true,
				cmp = false,
				treesitter_context = true,
				which_key = true,
			},
		}
		vim.cmd.colorscheme('catppuccin')
	end,
}
