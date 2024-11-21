require("config.lazy")
local vim = vim
local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

cmd([[
filetype indent plugin on
syntax enable
]])


--opt.guicursor = "n-v-i-c:block"
opt.guicursor = "n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait700-blinkoff400-blinkon250"

opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true
opt.expandtab = true
opt.tabstop=4
opt.shiftwidth=4
opt.softtabstop=4
--opt.autoindent = true
opt.smartindent = true
opt.termguicolors = true
opt.splitright = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

cmd'colorscheme gruber-darker'
--cmd'hi Cursor guifg=black guibg=yellow'
--cmd('set n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor')

cmd':inoremap <C-Space> <C-x><C-o>'

cmd([[
:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
]])


