return {
	{ 'jiangmiao/auto-pairs', event = { "BufReadPost", "BufNewFile" } },

	{ 'numToStr/Comment.nvim', config = true, keys = {
		{ 'gc' }, { 'gb' }, }, },

	{ 'chaoren/vim-wordmotion', event = { "BufReadPost", "BufNewFile" } },

	{ 'junegunn/vim-easy-align', keys = {
		{ 'ga', '<Plug>(EasyAlign)', desc = 'Align.' }, }, },

	{ 'tpope/vim-surround', dependendies = { 'tpope/vim-repeat' }, keys = {
		'cs', 'ds', 'ys' }, },

	{ 'folke/neodev.nvim', config = true, event = {
		"BufNewFile /home/ltr/.config/nvim/**.lua",
		"BufReadPre /home/ltr/.config/nvim/**.lua" } },

	{ 'lewis6991/gitsigns.nvim', config = true, event = { 'BufReadPost', 'BufNewFile' } },

	{ 'NeogitOrg/neogit', dependencies = { 'nvim-lua/plenary.nvim' }, cmd = 'Neogit',
		config = true },

	{ 'akinsho/bufferline.nvim', version = "*", config = true,
		dependencies = { 'nvim-tree/nvim-web-devicons' }, event = 'BufReadPre' },

	{ 'b0o/incline.nvim', init = function() vim.cmd.laststatus = 3 end, config = true,
		event = 'VeryLazy' },

	{ 'danymat/neogen', config = true, cmd = 'Neogen' },

	{ 'ziglang/zig.vim', ft = 'zig' },

	{ 'rcarriga/nvim-notify', config = function() vim.notify = require'notify' end,
		event = "VeryLazy" },

	{ 'tpope/vim-vinegar', keys = { '-' } },

	{ 'wellle/targets.vim', event = { 'BufNewFile', 'BufReadPost' } },

	{ 'unblevable/quick-scope', event = { 'BufReadPost', 'BufNewFile' } },

	{ 'mbbill/undotree', cmd = 'UndotreeToggle', config = function()
		vim.g.undotree_SetFocusWhenToggle = 1
	end, keys = { { '<leader>u', ':UndotreeToggle<CR>', desc = "See your undo history" } } },

	{ 'nvim-treesitter/nvim-treesitter-context', event = { 'BufNewFile', 'BufReadPost' } },

	{ 'ThePrimeagen/vim-be-good', cmd = 'VimBeGood' },

	{ 'rust-lang/rust.vim', ft = 'rust' },

	-- { 'junegunn/goyo.vim', cmd = 'Goyo' },

	{ 'vim-scripts/SearchComplete', keys = { '/', '?' } },

	-- { 'cormacrelf/vim-colors-github', event = "VeryLazy" },

	{ 'gabrielelana/vim-markdown', ft = 'markdown' },

	{ 'folke/twilight.nvim', cmd = 'Twilight' },

	{ 'glacambre/firenvim', lazy = not vim.g.started_by_firenvim, build = function()
		vim.fn['firenvim#install'](0)
	end},

	{ 'ervandew/ag', cmd = 'Ag' },

	-- { 'ellisonleao/gruvbox.nvim', config = true, lazy = false }
	{ 'catppuccin/nvim', name = "catppuccin", event = 'User LoadColorscheme' },

	-- { 'Bekaboo/dropbar.nvim', lazy = false } -- my version is too old

	{ 'lukas-reineke/headlines.nvim', dependencies = 'nvim-treesitter/nvim-treesitter',
		opts = {
			markdown = {
				dash_string = "—",
				fat_headline_lower_string = "▀"
			}
		}, ft = 'markdown' },

	{ 'folke/which-key.nvim', event = "VeryLazy", config = true },

	{ 'max397574/better-escape.nvim', config = function()
		require('better_escape').setup {
			mapping = { 'ii' }
		}
	end, event = 'InsertEnter'},
}

