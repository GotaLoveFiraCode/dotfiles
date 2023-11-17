return {
	'folke/neodev.nvim',

	dependencies = { -- {{{
		'neovim/nvim-lspconfig',
		{ 'j-hui/fidget.nvim', config = true }
		-- 'kevinhwang91/nvim-ufo'
	}, -- }}}

	event = { -- {{{ Lazy loading
		"BufNewFile /home/ltr/.config/nvim/**.lua",
		"BufReadPost /home/ltr/.config/nvim/**.lua"
	}, -- }}}

	config = function() -- {{{
		require 'neodev'.setup()

		-- {{{ Set capabilities to cmp [disabled]
		-- require 'lspconfig'.util.default_config = vim.tbl_deep_extend("force",
		-- 	require 'lspconfig'.util.default_config,
		-- 	{ capabilities = require 'cmp_nvim_lsp'.default_capabilities() })
		-- }}}

		-- {{{ add lsp folding support [disabled]
		-- local capabilities = vim.lsp.protocol.make_client_capabilities()
		-- capabilities.textDocument.foldingRange = {
		-- 	dynamicRegistration = false,
		-- 	lineFoldingOnly = true
		-- }
		-- require 'lspconfig'.util.default_config = vim.tbl_deep_extend (
		-- 	"force",
		-- 	require 'lspconfig'.util.default_config,
		-- 	{ capabilities = capabilities })
		-- }}}

		require'lspconfig'.lua_ls.setup {
			capabilities = require 'cmp_nvim_lsp'.default_capabilities()
		}

		-- require("ufo").setup { -- {{{ [disabled]
		-- 	provider_selector = function(bufnr, filetype, buftype)
		-- 		return {'lsp', 'treesitter'}
		-- 	end
		-- } -- }}}
	end -- }}}
}

