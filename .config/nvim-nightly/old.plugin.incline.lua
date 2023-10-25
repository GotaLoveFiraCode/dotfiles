return {
	'b0o/incline.nvim',
	init = function()
		vim.opt.laststatus = 3
	end,
	config = function()
		require'incline'.setup({
			hide = {
				cursorline = false,
				focused_win = false,
				only_win = false
			},
			highlight = {
				groups = {
					InclineNormal = {
						default = true,
						group = "NormalFloat"
					},
					InclineNormalNC = {
						default = true,
						group = "NormalFloat"
					}
				}
			},

			render = function(props)

				local bufnum      = props.buf
				local buffullname = vim.api.nvim_buf_get_name(props.buf)
				local bufname_t   = vim.fn.fnamedmodify(buffullname, ':t')
				local bufname     = (bufname_t and bufname_t ~= '') and bufname_t or '[No Name]'

				local devicon     = { ' ' }
				local success, nvim_web_devicons = pcall(require, 'nvim-web-devicons')

				if success then

					local bufname_r = vim.fn.fnamedmodify(buffullname, ':r')
					local bufname_e = vim.fn.fnamedmodify(buffullname, ':e')

					local base   = (bufname_r and bufname_r ~= '') and bufname_r or bufname
					local ext    = (bufname_e and bufname_e ~= '') and bufname_e or vim.fn.fnamedmodify(base, ':t')
					local ic, hl = nvim_web_devicons.get_icons(base, ext, { default = true })

					devicon = {
						ic,
						' ',
						group = hl
					}

				end

				local display_bufname = vim.tbl_extend('force', { bufname, '' }, field_format.name)

				local modified_icon = {}

				if vim.api.nvim_get_option_value('modified', { buf = props.buf, }) then

					modified_icon = vim.tbl_extend('force', { '● ' }, field_format.modified)
					display_bufname.guifg = field_format.modified.guifg

				end

				local display_bufnum = vim.tbl_extend('force', { bufnum, ' ' }, field_format.num)

				local start_test = vim.tbl_extend('force', { '█▓ ' }, field_format.blocks)
				local end_test = vim.tbl_extend('force', { '▓█ ' }, field_format.blocks)

				return {
					start_test,
					devicon,
					bufname,
					display_bufname,
					modified_icon,
					bufnum,
					display_bufnum,
					end_test
				}

			end,

			window = {
				margin = {
					horizontal = 0,
					vertical = 1
				},
				options = {
					signcolumn = "no",
					wrap = false
				},
				padding = 0,
				placement = {
					horizontal = "right",
					vertical = "top"
				},
				width = "fit",
			}
		})

		require('incline').enable()
	end,
	event = 'VeryLazy'
}
