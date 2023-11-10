vim.opt.scs = true
vim.opt.sta = true
vim.opt.si  = true
vim.opt.ts  = 4
vim.opt.et  = false
vim.opt.sw  = 4
vim.opt.nu  = true
vim.opt.rnu = true
vim.opt.cul = true
vim.opt.spr = true
vim.opt.so  = 4
vim.opt.swf = false
vim.opt.ls  = 3
vim.opt.sm  = true
vim.opt.tgc = true
vim.opt.ut  = 300
vim.opt.to  = true
vim.opt.tm  = 300
vim.opt.cc  = "80"
vim.opt.bri = true
vim.opt.udf = true
-- better :find, essentially fuzzy finding
vim.opt.pa:append "**"
-- first complete longest possible string, i.e. bash/zsh style
-- then open wildmenu and cycle through matches
vim.opt.wim = { 'longest', 'full'  }
vim.opt.wmnu = true
-- horizontal menu
vim.opt.wildoptions:remove 'pum'
vim.opt.wrap = false
vim.opt.bg = 'dark'
vim.opt.completeopt = { 'menu', 'menuone', 'noinsert' }

vim.opt.tags = './tags;$HOME'
vim.opt.title = true

vim.opt.foldexpr = 'marker'
vim.o.fillchars = [[eob: ,fold: ,foldopen:▼,foldsep: ,foldclose:⏵]]

-- vim.cmd [[
-- function! MyFoldText()

-- let line = getline(v:foldstart)
-- let folded_line_num = v:foldend - v:foldstart
-- let line_text = substitute(line, '^"{\+', '', 'g')
-- let fillcharcount = &textwidth - len(line_text) - len(folded_line_num)

-- return '+'. repeat('—', 4) . line_text . repeat('.', fillcharcount) . ' (' . folded_line_num . ' L)'

-- endfunction

-- set foldtext=MyFoldText()
-- ]]

vim.keymap.set('n', '<leader>o', function()
	local foldclosed = vim.fn.foldclosed(vim.fn.line("."))
	if foldclosed == -1 then
		vim.cmd([[silent! normal! zfip]])
	else
		vim.cmd("silent! normal! zo")
	end
end)

