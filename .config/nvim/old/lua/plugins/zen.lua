return {
	'folke/zen-mode.nvim',
	opts = {
		window = {
			options = {
				cursorline = false,
			},
		},
		plugins = {

			options = {
				enabled = true,
				ruler = false, -- disables the ruler text in the cmd line area
				showcmd = false, -- disables the command in the last line of the screen
			},

			['auto-pairs']       = { enabled = false },
			['vim-illuminate']   = { enabled = false },
			['bufferline.nvim']  = { enabled = false },
			['twilight']         = { enabled = false },

			alacritty = {
				enabled = true,
				font = "15",
			},
		},
		on_open = function(win)
			vim.cmd.colorscheme "catppuccin-latte"
			vim.opt.wrap = true
			-- vim.cmd.Gitsigns('toggle_signs')
			vim.cmd.IBLDisable()
			vim.g.showtabline = 0
			vim.cmd.IlluminateToggle()
			vim.cmd.QuickScopeToggle()
			vim.opt.colorcolumn = '0'
			vim.opt.number = false
			vim.opt.rnu    = false
		end,
		on_close = function()
			vim.cmd.colorscheme "tokyonight"
			vim.opt.wrap = false
			vim.g.showtabline = 1
			vim.cmd.IlluminateToggle()
			-- vim.cmd.Gitsigns("toggle_signs")
			vim.cmd.QuickScopeToggle()
			vim.cmd.IBLEnable()
		end
	},
	cmd = 'ZenMode', dependencies = { 'cormacrelf/vim-colors-github' }
}
