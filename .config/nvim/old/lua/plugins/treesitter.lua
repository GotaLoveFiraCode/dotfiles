return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		{ "RRethy/nvim-treesitter-endwise" },
		{ 'andymass/vim-matchup' },
		{ 'nvim-treesitter/nvim-treesitter-context' },
	},
	config = function()
		require 'nvim-treesitter.configs'.setup {
			auto_install = true,
			ensure_installed = { 'c', 'lua', 'ruby', 'perl', 'zig', 'rust' },
			ignore_install = { 'javascript', 'java', 'c#', 'python' },
			highlight = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			matchup = {
				enable = true,
			},
			endwise = {
				enable = true,
			}
		}
	end,
}
