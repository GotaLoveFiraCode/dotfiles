return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,

	config = function() -- {{{
		require'catppuccin'.setup {
			flavour = "mocha",
			transparent_background = false,
			term_colors = true,

			dim_inactive = { -- {{{
				enabled = false, -- dim inactive windows
				shade = "dark",
				percentage = 0.15, -- how much darker
			}, -- }}}

			styles = { -- {{{
				comments = { "italic" },
				conditionals = { "italic" },
				loops = { "italic" },
				functions = { "bold" },
				keywords = { "bold" },
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				-- properties = { "italic" },
				types = { "italic" },
				operators = {},
			}, -- }}}

			integrations = { -- {{{

				telescope = { -- {{{
					enabled = true,
					-- style = 'nvchad'
				}, -- }}}

				native_lsp = { -- {{{
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				}, -- }}}

				illuminate = { -- {{{
					enabled = true,
					lsp = true
				}, -- }}}

				indent_blankline = { -- {{{
					enabled = true,
					scope_color = "blue"
				}, -- }}}

				treesitter = true, -- {{{ Other plugins
				treesitter_context = true,
				cmp = true,
				lsp_trouble = true,
				leap = true,
				gitsigns = true,
				harpoon = true,
				headlines = true,
				markdown = true,
				neogit = true,
				alpha = true -- }}}
			}, -- }}}
		}

		vim.cmd.colorscheme('catppuccin')
	end -- }}}
}
