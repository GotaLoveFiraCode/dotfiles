return {
	'folke/trouble.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	opts = {
		mode = "quickfix", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
		action_keys = {
			close = "q", -- close the list
			cancel = "<esc>",
			refresh = "r",
			open_split = { "<c-x>" }, -- open buffer in new split
			open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
			open_tab = { "<c-t>" }, -- open buffer in new tab
			jump_close = {"o"}, -- jump to the diagnostic and close the list
			toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
			switch_severity = "s", -- switch "diagnostics" severity filter level to HINT / INFO / WARN / ERROR
			toggle_preview = "P", -- toggle auto_preview
			hover = "K", -- opens a small popup with the full multiline message
			preview = "p", -- preview the diagnostic location
			open_code_href = "c", -- if present, open a URI with more information about the diagnostic error
			close_folds = {"zM", "zm"}, -- close all folds
			open_folds = {"zR", "zr"}, -- open all folds
			toggle_fold = {"zA", "za"}, -- toggle fold of current file
			previous = "k", -- previous item
			next = "j", -- next item
			help = "?", -- help menu
		},
	},
	cmd = 'TroubleToggle',
	keys = {
		{ '<leader>t', '<cmd>TroubleToggle<CR>', desc = 'Open QuickFix' }
	}
}
