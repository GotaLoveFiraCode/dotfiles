return {
	'andymass/vim-matchup',
	event = { 'BufReadPost', 'BufNewFile', 'BufWritePost' },
	config = function()
		vim.g.matchup_matchparen_offscreen = { method = 'popup' }
	end
}
