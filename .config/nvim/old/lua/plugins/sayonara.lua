return {
	"mhinz/vim-sayonara", cmd = "Sayonara",
	keys = {
		{ '<C-q>', vim.cmd.Sayonara, desc = "Quit the buffer." },
		{ '<C-e>', "<cmd>Sayonara!<CR>", desc = "Quit the buffer, but don't close vim." },
		{ 'ZZ', vim.cmd.w and vim.cmd.Sayonara, desc = "Save and close the buffer." },
	},
}
