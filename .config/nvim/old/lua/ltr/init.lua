require 'ltr.remap'
require 'ltr.set'


-- for front-end neovide, nvim ignores this
if vim.g.neovide then
	vim.o.guifont = "Hack Nerd Font,JetBrainsMono Nerd Font:h14:#e-subpixelantialias:#h-slight"
	vim.opt.linespace = 1
	-- vim.g.neovide_padding_top = 4
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_theme = 'dark'
	vim.g.neovide_refresh_rate = 144
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

