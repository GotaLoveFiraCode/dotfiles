return {
	'folke/which-key.nvim',
	event = 'VeryLazy',
	opts = {
		-- add operators that will trigger motion and text object completion
		operators = {
			gc = "Line comment", gb = "Block comment",
			cs = "Change surround", ys = "Surround", ds = "Remove Surround",
			ga = "Align",
		},
		show_help = false,
	},
	config = function()
		local wk = require'which-key'

		wk.register({
			['<C-j>'] = { '<C-w>j', '↓ Window' },
			['<C-k>'] = { '<C-w>k', '↑ Window' },
			['<C-h>'] = { '<C-w>h', '← Window' },
			['<C-l>'] = { '<C-w>l', '→ Window' },
			['<C-I>'] = { vim.cmd.bn, "Next buffer" },
			['<C-s>'] = { vim.cmd.w, "Save file" },
			['<C-q>'] = { vim.cmd.q, "Quit window" },
			['<C-e>'] = { vim.cmd.bd, "Quit buffer" },
			['<C-d>'] = { '<C-d>zz', 'Go down' },
			['<C-u>'] = { '<C-u>zz', 'Go up' },
			['n']     = { 'nzzzv', 'Next result' },
			['N']     = { 'Nzzzv', 'Previous result' },
			['{']     = { '{zzzv', 'Up paragraph' },
			['}']     = { '}zzzv', 'Down paragraph' },
			['<C-l>'] = { vim.cmd.noh, 'Clear Highlighting' }
		})
	end
}

