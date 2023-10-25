-- speed up loading of lua modules, replaces impatient.nvim
vim.loader.enable()

-- find local data dir; '~/.local/share/nvim-nightly'
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

--[[ bootstrap lazy.nvim ]]
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

-- add lazy to runtime path
vim.opt.rtp:prepend(lazypath)

-- leader keys needs to be set *before* lazy.nvim loads
vim.g.mapleader = " "

--[[ load lazy.nvim ]]
require 'lazy'.setup("plugins", {
	-- try to set colorscheme when installing plugins
	install = { colorscheme = { 'catppuccin', 'tokyonight', 'slate' } },
	-- check for plugin updates, but not to often
	checker = { enabled = false, concurrency = 1 },
	performance = {
		-- don't change packpath
		reset_packpath = true,
		rtp = {
			-- don't change runtimepath either
			reset = false,
			-- disable unneeded default plugins
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"tarPlugin",
				"tutor",
				"zipPlugin",
				"tohtml",
				"netrwPlugin"
			}
		}
	}
})
-- settings, basic remaps, neovide, etc.
require'core'
