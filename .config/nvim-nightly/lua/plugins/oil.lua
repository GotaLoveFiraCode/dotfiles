return {
	'stevearc/oil.nvim',
	opts = {
		default_file_explorer = true,
		-- Id is automatically added at the beginning, and name at the end
		-- See :help oil-columns
		columns = {
			"icon",
			-- "permissions",
			"size",
			-- "mtime",
		},
		-- Buffer-local options to use for oil buffers
		buf_options = {
			buflisted = false,
			bufhidden = "hide",
		},
		-- Window-local options to use for oil buffers
		win_options = {
			wrap = false,
			signcolumn = "no",
			cursorcolumn = false,
			foldcolumn = "0",
			spell = false,
			list = false,
			conceallevel = 3,
			concealcursor = "nvic",
		},
		-- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
		delete_to_trash = false,
		-- Skip the confirmation popup for simple operations
		skip_confirm_for_simple_edits = false,
		-- Change this to customize the command used when deleting to trash
		trash_command = "trash-put",
		-- Selecting a new/moved/renamed file or directory will prompt you to save changes first
		prompt_save_on_select_new_entry = true,
		-- Oil will automatically delete hidden buffers after this delay
		-- You can set the delay to false to disable cleanup entirely
		-- Note that the cleanup process only starts when none of the oil buffers are currently displayed
		cleanup_delay_ms = 2000,
		-- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
		-- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
		-- Additionally, if it is a string that matches "actions.<name>",
		-- it will use the mapping at require("oil.actions").<name>
		-- Set to `false` to remove a keymap
		-- See :help oil-actions for a list of all available actions
		keymaps = {
			["g?"] = "actions.show_help",
			["<CR>"] = "actions.select",
			["<C-s>"] = "actions.select_vsplit",
			["<C-h>"] = "actions.select_split",
			["<C-t>"] = "actions.select_tab",
			["<C-p>"] = "actions.preview",
			["<C-u>"] = "actions.preview_scroll_up",
			["<C-d>"] = "actions.preview_scroll_down",
			["<C-c>"] = "actions.close",
			["<C-l>"] = "actions.refresh",
			["-"] = "actions.parent",
			["_"] = "actions.open_cwd", -- neovim working dir
			["`"] = "actions.cd",
			["~"] = "actions.tcd",
			["gs"] = "actions.change_sort",
			["gx"] = "actions.open_external",
			["gh"] = "actions.toggle_hidden",
			["gt"] = "actions.open_terminal",
			["Y"] = "actions.copy_entry_path",
			["."] = "actions.open_cmdline",
		},
		view_options = {
			show_hidden = true,
			-- This function defines what will never be shown, even when `show_hidden` is set
			is_always_hidden = function(name, bufnr)
				return false
			end,
			sort = {
				-- sort order can be "asc" or "desc"
				-- see :help oil-columns to see which columns are sortable
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
	},
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	keys = {{ '-', '<CMD>Oil<CR>', desc = 'View directory' }},
}
