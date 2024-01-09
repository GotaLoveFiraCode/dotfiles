return {
	'terrortylor/nvim-comment',
	cmd = 'CommentToggle',
	keys = {
		{ 'gcc' },
		{ 'gc', mode = { 'n', 'v' } }
	},
	config = function()
		require 'nvim_comment'.setup {}
	end
}
