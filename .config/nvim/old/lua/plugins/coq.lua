return {
	'ms-jpq/coq_nvim',
	branch = 'coq',
	build = ':COQdeps',
	event = 'InsertEnter',
	dependencies = {
		{ 'ms-jpq/coq.thirdparty', branch = '3p' },
		{ 'ms-jpq/coq.artifacts', branch = 'artifacts' },
	},
	init = function()
		vim.g.coq_settings = { ['auto_start'] = true }
		vim.g.coq_settings = { ['keymap.jump_to_mark'] = "<CM-h>" }
	end,
	config = function()
		require'coq'.Now('--shut-up')
	end
}

