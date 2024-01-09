return {
	'nvim-treesitter/nvim-treesitter',
	event = 'VeryLazy',
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			auto_install = true,
			highlight = {
				enable = true,
				-- audditional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			}
		}
	end
}
