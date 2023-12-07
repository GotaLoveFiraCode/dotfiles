return {
	'ThePrimeagen/harpoon',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		-- This basically means harpoon is a set of reserved marks.
		-- Hapoon also remembers your location *inside* the file, so very
		-- similar--if not the same--to global marks.
		{ 'mt', function() require'harpoon.mark'.add_file() end, desc = 'Mark'},
		{ '\'`', function() require'harpoon.term'.gotoTerminal(1) end },
		{ '`t', function() require'harpoon.term'.gotoTerminal(1) end },
		{ '\'t', function() require'harpoon.ui'.toggle_quick_menu() end, desc = 'Mark Menu' },
		{ '\'n', function() require'harpoon.ui'.nav_next() end, desc = 'Go Next' },
		{ '\'p', function() require'harpoon.ui'.nav_prev() end, desc = 'Go Back' },
		{ '\'1', function() require'harpoon.ui'.nav_file(1) end, desc = 'Go 1' },
		{ '\'2', function() require'harpoon.ui'.nav_file(2) end, desc = 'Go 2' },
		{ '\'3', function() require'harpoon.ui'.nav_file(3) end, desc = 'Go 3' },
		{ '\'4', function() require'harpoon.ui'.nav_file(4) end, desc = 'Go 4' },
	},
	config = function()
		require("telescope").load_extension('harpoon')
	end
}

