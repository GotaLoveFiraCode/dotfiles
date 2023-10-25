-- speed up the loading of lua modules
vim.loader.enable()

-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- leader key needs to be loaded *before* lazy.nvim
vim.g.mapleader = " "

-- plugins go in lua.plugins
require 'lazy'.setup("plugins", {
	defaults = { lazy = true },
	-- install = { colorscheme = { "tokyonight" } },
	checker = { enabled = true, concurrency = 1 },
	change_detection = { notify = false },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"tarPlugin",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

require 'ltr'
