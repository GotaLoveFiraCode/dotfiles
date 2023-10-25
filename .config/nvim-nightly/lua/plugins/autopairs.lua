return {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
	opts = {
		check_ts = true,
		fast_wrap = {
			map = '<M-e>',
			chars = { '{', '[', '(', '"', "'" },
			pattern = [=[[%'%"%>%]%)%}%,]]=],
			end_key = '$',
			before_key = 'h',
			after_key = 'l',
			cursor_pos_before = true,
			keys = 'qwertyuiopzxcvbnmasdfghjkl',
			manual_position = true,
			highlight = 'Search',
			highlight_grey='Comment'
		},
		enable_check_bracket_line = true,
		ignore_next_check = "[%w%.]",
		map_bs = true,
		map_cr = true,
		map_c_h = true
	}
}
