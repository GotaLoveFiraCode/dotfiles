-- speed up loading of lua modules
vim.loader.enable()

--[[ bootstrap lazy ]]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- needs to be set before lazy
vim.g.mapleader = " "

require 'lazy'.setup("plugins", {
	install = { colorscheme = { 'catpuccin', 'slate' } },
	checker = { enabled = true, concurrency = 1 },
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
				-- "netrwPlugin"
			}
		}
	}
})

require 'core'

