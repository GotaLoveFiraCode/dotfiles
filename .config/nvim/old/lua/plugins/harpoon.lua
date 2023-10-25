return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	init = function()
		local remap = vim.keymap.set

		remap("n", "<leader>m", function() require'harpoon.mark'.add_file() end)
		remap("n", "<leader>s", function() require'harpoon.ui'.toggle_quick_menu() end)
		remap("n", "<leader>1", function() require'harpoon.ui'.nav_file(1) end)
		remap("n", "<leader>2", function() require'harpoon.ui'.nav_file(2) end)
		remap("n", "<leader>3", function() require'harpoon.ui'.nav_file(3) end)
		remap("n", "<leader>4", function() require'harpoon.ui'.nav_file(4) end)
	end
}

