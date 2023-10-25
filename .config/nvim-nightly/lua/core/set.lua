local set = vim.opt

set.hlsearch       = true
set.smartcase      = true
set.smarttab       = true
set.smartindent    = true
set.tabstop        = 4
set.expandtab      = false
set.shiftwidth     = 4
set.number         = true
set.relativenumber = true
set.cursorline     = true
set.splitright     = true
set.scrolloff      = 4
set.swapfile       = false
set.laststatus     = 3 -- move statusline around
set.showmatch      = true
set.termguicolors  = true
set.updatetime     = 300
set.timeoutlen     = 300
set.colorcolumn    = "80"
set.breakindent    = true
set.undofile       = true
set.timeout        = true
set.list           = false
set.path:append      "**" -- enables :find
set.listchars:append "trail:·"
set.listchars:append "extends:…"
set.listchars:append "precedes:…"
set.wildmode       = { "longest", "full" }
set.completeopt    = { "menu", "preview", "longest" }
set.background     = 'dark'
set.wrap           = false
set.laststatus   = 3
