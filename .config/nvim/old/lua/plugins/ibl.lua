return {
	'lukas-reineke/indent-blankline.nvim',
	main = 'ibl',
	event = 'BufReadPre',
	config = function()

		local highlight = {
			"CursorColumn",
			"Whitespace",
		}

		require("ibl").setup {

			-- indent = {
			-- 	char = '▏',
			-- },

			indent = {
				char = "",
				highlight = highlight,
			},

			whitespace = {
				highlight = highlight,
				remove_blankline_trail = false,
			},

			scope = { enabled = false },
		}

	end,
}

