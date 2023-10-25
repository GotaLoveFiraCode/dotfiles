return {
	'Vonr/align.nvim',
	branch = 'v2',
	keys   = {

		{ 'ga', function()
			require'align'.align_to_string({
				preview = true,
				regex   = false,
			})
		end, mode = 'v', desc = 'Align string'},

		{ 'ga', function()
			local a = require'align'
			a.operator(a.align_to_string)
		end, desc = 'Align'}

	},
}

