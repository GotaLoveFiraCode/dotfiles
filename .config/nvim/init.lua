local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Needs to be set before lazy.nvim is called.
vim.g.mapleader = " "

require 'lazy'.setup({ -- {{{
	{ -- {{{ Autoclose — autofill brackets et alia
		'm4xshen/autoclose.nvim',
		opts = {
			options = {
				disabled_when_touch = true,
				pair_spaces = true,
			}
		},
		event = 'InsertCharPre'
	}, -- }}}

	{ -- {{{ BufDel buffer deletion
		'ojroques/nvim-bufdel',
		keys = {
			{ '<C-q>', '<CMD>BufDel<CR>' }
		}
	}, -- }}}

	{ -- {{{ Colorizer — color colors
		'norcalli/nvim-colorizer.lua',
		config = true,
		keys = {
			{ '<leader>ct', vim.cmd.ColorizerToggle },
			{ '<leader>cc', vim.cmd.ColorizerReloadAllBuffers }
		}
	}, -- }}}

	{ -- {{{ Comment toggling
		'terrortylor/nvim-comment',
		cmd = 'CommentToggle',
		keys = {
			{ 'gcc' },
			{ 'gc', mode = { 'n', 'v' } }
		},
		config = function()
			require 'nvim_comment'.setup {}
		end
	}, -- }}}

	{ -- {{{ Cybu buffer management
		'ghillb/cybu.nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'nvim-lua/plenary.nvim'
		},
		keys = {
			{ '<C-up>',   '<Plug>(CybuPrev)' },
			{ '<C-down>', '<Plug>(CybuNext)' },
			{ '<Tab>',    '<Plug>(CybuLastusedNext)' }
		},
		config = function()
			require 'cybu'.setup {
				position = {
					anchor = 'bottomleft',
					-- topleft, topcenter, topright,
					-- centerleft, center, centerright,
					-- bottomleft, bottomcenter, bottomright
				},
				style = {
					path = "relative",            -- absolute, relative, tail (filename only)
					border = "rounded",           -- single, double, rounded, none
					separator = " ",              -- string used as separator
					prefix = "…",                 -- string used as prefix for truncated paths
					padding = 1,                  -- left & right padding in number of spaces
					devicons = {
						enabled = true,             -- enable or disable web dev icons
						colored = true,             -- enable color for web dev icons
						truncate = true,            -- truncate wide icons to one char width
					},
					highlights = {                -- see highlights via :highlight
						current_buffer = "CybuFocus",       -- current / selected buffer
						adjacent_buffers = "CybuAdjacent",  -- buffers not in focus
						background = "CybuBackground",      -- window background
						border = "CybuBorder",              -- border of the window
					},
				},
			}
		end
	}, -- }}}

	{ -- {{{ Deadcolumn — better colorcolumn
		'Bekaboo/deadcolumn.nvim',
		event = 'VeryLazy',
	}, -- }}}

	{ -- {{{ Eyeliner — better f/t
		'jinh0/eyeliner.nvim',
		keys = {
			'f',
			'F',
			't',
			'T'
		},
		config = function()
			vim.api.nvim_set_hl(0, "EyelinerPrimary", { bold = true, fg = '#1e1e2e', bg = '#fab387' })
			vim.api.nvim_set_hl(0, "EyelinerSecondary", { underline = true, bold = true, italic = true, fg = '#94e2d5' })
			require 'eyeliner'.setup {
				highlight_on_key = true,
				dim = true
			}
		end
	}, -- }}}

	{ -- {{{ Gitsigns et alia
		'lewis6991/gitsigns.nvim',
		config = true,
		-- event = { 'BufReadPost', 'BufNewFile' }
		event = 'VeryLazy'
	}, -- }}}

	{ -- {{{ Indent-blankline indent guides
		'lukas-reineke/indent-blankline.nvim',
		event = 'VeryLazy',
		main = 'ibl',
		opts = {
			indent = {
				char = '▏'
			},
			scope = {
				enabled = true,
				show_end = false,
				show_start = false
			}
		}
	}, -- }}}

	{ -- {{{ Kanagawa theme
		'rebelot/kanagawa.nvim',
		config = function()
			require 'kanagawa'.setup { compile = true }
			vim.cmd.colorscheme('kanagawa')
		end,
	}, -- }}}

	{ -- {{{ Treesitter
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
				},
				matchup = {
					enabled = true
				}
			}
		end
	}, -- }}}

	{ -- {{{ Indent-o-matic automatic indentation detection
		'Darazaki/indent-o-matic',
		event = 'BufReadPost'
	}, -- }}}

	{ -- {{{ Leap — better navigation
		'ggandor/leap.nvim',
		dependencies = { 'tpope/vim-repeat' },
		config = function()
			require 'leap'.create_default_mappings()
			vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
		end,
		keys = {
			{ 's' },
			{ 'S' },
			{ 'gs' }
		}
	}, -- }}}

	{ -- {{{ Matchup — better % et alia
		'andymass/vim-matchup',
		event = 'VeryLazy',
		init = function()
			vim.g.matchup_matchparen_offscreen = { method = 'popup' }
		end
	}, -- }}}

	{ -- {{{ Neogit git management
		'NeogitOrg/neogit',
		dependencies = { 'nvim-lua/plenary.nvim' },
		cmd = 'Neogit',
		config = true
	}, -- }}}

	{ -- {{{ Numb — better commandline line navigation
		'nacro90/numb.nvim',
		event = 'CmdlineEnter',
		config = true
	}, -- }}}

	{ -- {{{ Reticle — better cursorline
		'tummetott/reticle.nvim',
		event = 'VeryLazy',
		opts = { on_startup = { cursorline = true } }
	}, -- }}}

	{ -- {{{ Neoscroll scrolling
		'karb94/neoscroll.nvim',
		config = function()
			require 'neoscroll'.setup {
				stop_eof = false,
				easing_function = 'sine'
			}
		end,
		keys = {
			'<c-b>',
			'<c-f>',
			'<c-u>',
			'<c-d>',
			'<c-y>',
			'<c-e>',
			'zz'
		}
	}, -- }}}

	{ -- {{{ Spider word motions
		'chrisgrieser/nvim-spider',
		keys = {
			{
				'w',
				"<cmd>lua require('spider').motion('w')<CR>",
				mode = { 'n', 'o', 'x' }
			},
			{
				'e',
				"<cmd>lua require('spider').motion('e')<CR>",
				mode = { 'n', 'o', 'x' }
			},
			{
				'b',
				"<cmd>lua require('spider').motion('b')<CR>",
				mode = { 'n', 'o', 'x' }
			},
			{
				'ge',
				"<cmd>lua require('spider').motion('ge')<CR>",
				mode = { 'n', 'o', 'x' }
			}
		}
	}, -- }}}

	{ -- {{{ Smart-splits pane management
		'mrjones2014/smart-splits.nvim',
		keys = {
			{ '<a-h>', function() require 'smart-splits'.resize_left()  end },
			{ '<a-j>', function() require 'smart-splits'.resize_down()  end },
			{ '<a-k>', function() require 'smart-splits'.resize_up()    end },
			{ '<a-l>', function() require 'smart-splits'.resize_right() end },

			{ '<c-h>', function() require 'smart-splits'.move_cursor_left()  end },
			{ '<c-j>', function() require 'smart-splits'.move_cursor_down()  end },
			{ '<c-k>', function() require 'smart-splits'.move_cursor_up()    end },
			{ '<c-l>', function() require 'smart-splits'.move_cursor_right() end },

			{ '<leader><leader>h', function() require 'smart-splits'.swap_buf_left()  end },
			{ '<leader><leader>j', function() require 'smart-splits'.swap_buf_down()  end },
			{ '<leader><leader>k', function() require 'smart-splits'.swap_buf_up()    end },
			{ '<leader><leader>l', function() require 'smart-splits'.swap_buf_right() end }
		}
	}, -- }}}

	{ -- {{{ Surround — surround objects with things, i.e. quotes.
		'kylechui/nvim-surround',
		version = '*',
		config = true,
		keys = {
			{ 'ys' },
			{ 'yS' },
			{ 'cs' },
			{ 'cS' },
			{ 'ds' },
			{ 'S', mode = 'v' },
			{ '<C-g>s', mode = 'i' },
			{ '<C-g>S', mode = 'i' }
		}
	}, -- }}}

	{ -- {{{ Various-textobjs additional text objects
		'chrisgrieser/nvim-various-textobjs',
		event = 'CursorHold',
		opts = { useDefaultKeymaps = true }
	}, -- }}}

	{ -- {{{ Undotree — visualize undo history
		'jiaoshijie/undotree',
		dependencies = 'nvim-lua/plenary.nvim',
		config = true,
		keys = {
			{ '<F5>', function() require 'undotree'.toggle() end }
		}
	}, -- }}}

	{ -- {{{ Unimpaired — additional [ and ] keybinds in pairs
		'tummetott/unimpaired.nvim',
		config = true,
		event = 'CursorHold'
	}, -- }}}

	{ -- {{{ Heirline statusline
		'rebelot/heirline.nvim',
		event = 'UIEnter',

		dependencies = {
			{ 'nvim-tree/nvim-web-devicons' },
			{ 'lewis6991/gitsigns.nvim' },
		},

		config = function()
			local conditions = require 'heirline.conditions'
			local utils      = require 'heirline.utils'

			local colors     = require 'kanagawa.colors'.setup()
			require 'heirline'.load_colors(colors)

			local Align  = { provider = '%=' }
			local Space  = { provider = ' '  }
			local SpaceR = { provider = ' → ', hl = { fg = 'oldWhite' } }
			local SpaceL = { provider = ' ← ', hl = { fg = 'oldWhite' } }

			local ViMode = {
				init = function(self)
					self.mode = vim.fn.mode(1) -- :h mode()
				end,

				static = {
					mode_names = {
						n = "NORMAL",
						no = "N?",
						nov = "N?",
						noV = "N?",
						["no\22"] = "N?",
						niI = "Ni",
						niR = "Nr",
						niV = "Nv",
						nt = "Nt",
						v = "VISUAL",
						vs = "Vs",
						V = "V_",
						Vs = "Vs",
						["\22"] = "^V",
						["\22s"] = "^V",
						s = "S",
						S = "S_",
						["\19"] = "^S",
						i = "INSERT",
						ic = "Ic",
						ix = "Ix",
						R = "R",
						Rc = "Rc",
						Rx = "Rx",
						Rv = "Rv",
						Rvc = "Rv",
						Rvx = "Rv",
						c = "COMMAND",
						cv = "Ex",
						r = "...",
						rm = "M",
						["r?"] = "?",
						["!"] = "SHELL",
						t = "TERMINAL",
					},

					mode_colors = {
						n = "red" ,
						i = "green",
						v = "cyan",
						V =  "cyan",
						["\22"] =  "cyan",
						c =  "orange",
						s =  "purple",
						S =  "purple",
						["\19"] =  "purple",
						R =  "orange",
						r =  "orange",
						["!"] =  "red",
						t =  "red",
					}
				},
				-- We can now access the value of mode() that, by now, would have been
				-- computed by `init()` and use it to index our strings dictionary.
				-- note how `static` fields become just regular attributes once the
				-- component is instantiated.
				-- To be extra meticulous, we can also add some vim statusline syntax to
				-- control the padding and make sure our string is always at least 2
				-- characters long. Plus a nice Icon.
				provider = function(self)
					return " %2("..self.mode_names[self.mode].."%)"
				end,
				-- Same goes for the highlight. Now the foreground will change according to the current mode.
				hl = function(self)
					local mode = self.mode:sub(1, 1) -- get only the first mode character
					return { fg = self.mode_colors[mode], bold = true, }
				end,
				-- Re-evaluate the component only on ModeChanged event!
				-- Also allows the statusline to be re-evaluated when entering operator-pending mode
				update = {
					"ModeChanged",
					pattern = "*:*",
					callback = vim.schedule_wrap(function()
						vim.cmd("redrawstatus")
					end),
				},
			}

		end
	}, -- }}}

}, { -- {{{ Lazy.nvim options
	install = { colorscheme = { 'kanagawa', 'habamax' } },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"tarPlugin",
				"tutor",
				"zipPlugin",
				"tohtml",
				--"netrwPlugin",
				"editorconfig",
			}
		}
	} -- }}}
}) -- }}}

-- General Settings (i.e. vim.opt) {{{
vim.opt.scs = true
vim.opt.sta = true
vim.opt.si  = true
vim.opt.ts  = 4
vim.opt.et  = false
vim.opt.sw  = 4
vim.opt.nu  = true
vim.opt.rnu = true
vim.opt.cul = true
vim.opt.spr = true
vim.opt.so  = 8
vim.opt.swf = false
vim.opt.ls  = 3
vim.opt.sm  = true
vim.opt.tgc = true
vim.opt.ut  = 300
vim.opt.to  = true
vim.opt.tm  = 300
vim.opt.cc  = "80"
vim.opt.bri = true
vim.opt.udf = true
vim.opt.wrap = false
vim.opt.bg = 'dark'
vim.opt.tags = './tags;$HOME'
vim.opt.title = true
vim.opt.fde = 'nvim_treesitter#foldexpr()'

vim.opt.fdm = 'marker'
-- vim.opt.cmdheight = 0
-- vim.opt.completeopt = { 'menu', 'menuone', 'noinsert' }
-- vim.opt.fdc='auto:3'
-- vim.o.fillchars = [[foldopen:▼,foldclose:⏵,foldsep: ]]
-- vim.o.statuscolumn = '%=%l%s%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "▼" : "⏵") : " " }'
-- vim.o.statuscolumn='%=%l%s%{foldlevel(v:lnum) > 0 ? (foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? "▼" : "⏵") : "│") : " " }'
-- }}}

-- {{{ <leader>oo == fold paragraph/open fold
vim.keymap.set('n', '<leader>oo', function()
	local foldclosed = vim.fn.foldclosed(vim.fn.line("."))
	if foldclosed == -1 then
		vim.cmd([[silent! normal! zfip]])
	else
		vim.cmd("silent! normal! zo")
	end
end) -- }}}

-- {{{ <leader>o<leader> == switch foldmethod
vim.keymap.set('n', '<leader>o<leader>', function()
	if vim.o.foldmethod == 'manual' then
		vim.opt.foldmethod = 'marker'
	elseif vim.o.foldmethod == 'marker' then
		vim.opt.foldmethod = 'expr'
	elseif vim.o.foldmethod == 'expr' then
		vim.opt.foldmethod = 'manual'
	end
	print(vim.cmd.set("foldmethod?"))
end) -- }}}

-- {{{ keymaps…
vim.keymap.set('n', '0', '^')
vim.keymap.set('n', '^', '0')

vim.keymap.set('n', '<C-s>', vim.cmd.w)
vim.keymap.set({'n', 'v'}, '<C-p>', '"+')

vim.keymap.set('n', 'g-', ':')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
-- }}}

-- for front-end neovide, nvim ignores this {{{
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h14:#e-subpixelantialias:#h-full"
	vim.opt.linespace = 1
	-- vim.g.neovide_padding_top = 4
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_theme = 'dark'
	vim.g.neovide_refresh_rate = 144
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
end -- }}}
