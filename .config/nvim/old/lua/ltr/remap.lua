local remap = vim.keymap.set

remap("n", "<C-h>", "<C-w>h")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-k>", "<C-w>k")
remap("n", "<C-l>", "<C-w>l")

remap("n", "<C-n>", vim.cmd.vsp)
remap("n", "<C-p>", vim.cmd.sp)

remap("n", "<C-I>", vim.cmd.bn)
remap("n", "<CM-I>", vim.cmd.tabn)

remap("n", "<C-s>", vim.cmd.w)
remap("v", "K", ":m '>-2<CR>gv")
remap("v", "J", ":m '>+1<CR>gv")
remap("n", "<C-d>", "<C-d>zz")
remap("n", "<C-u>", "<C-u>zz")
remap("n", "n", "nzzzv")
remap("n", "N", "Nzzzv")
remap("n", "{", "{zzzv")
remap("n", "}", "}zzzv")
remap("n", "%", "%zzzv")
remap("n", "0", "^")

remap("n", "<leader><leader>t", ":fin " )
remap("n", "<leader><leader>n", ":grep ")
