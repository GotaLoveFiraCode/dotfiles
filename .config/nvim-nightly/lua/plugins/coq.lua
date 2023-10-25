return {
	'ms-jpq/coq_nvim',
	branch = 'coq',
	build = ':COQdeps',
	event = 'InsertEnter',
	dependencies = {
		{ 'ms-jpq/coq.artifacts',  branch = 'artifacts' },
		{ 'ms-jpq/coq.thirdparty', branch = '3p' },
	},
	init = function()
		vim.g.coq_settings = { ['keymap.recommended'] = false }
		vim.g.coq_settings = { ['keymap.jump_to_mark'] = "<CM-h>" }
		vim.g.coq_settings = { ['keymap.manual_complete'] = "<c-space>" }

		vim.api.nvim_set_keymap('i', '<c-c>', [[pumvisible() ? "\<C-e><C-c>" : "\<C-c>"]], { expr = true, noremap = true })
	end,
	config = function()

		vim.g.coq_settings = { ['keymap.recommended'] = false }
		vim.g.coq_settings = { ['keymap.jump_to_mark'] = "<CM-h>" }
		vim.g.coq_settings = { ['keymap.manual_complete'] = "<c-space>" }

		vim.api.nvim_set_keymap('i', '<c-c>', [[pumvisible() ? "\<C-e><C-c>" : "\<C-c>"]], { expr = true, noremap = true })

		-- start coq
		vim.cmd.COQnow('-s')
	end
}

