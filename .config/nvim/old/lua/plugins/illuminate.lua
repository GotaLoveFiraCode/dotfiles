return {
	"RRethy/vim-illuminate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require'illuminate'.configure {
			delay = 300
		}
	end
}

