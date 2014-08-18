set t_Co=256
set nocompatible  
filetype off
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/fugitive.vim
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'thoughtbot/vim-rspec'
Bundle 'ervandew/supertab'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'Lokaltog/vim-easymotion'
call vundle#end()

filetype plugin indent on

syntax on 
set number ruler tabstop=2 shiftwidth=2
set et|retab
set ai
set si
set rnu
set list listchars=tab:……,trail:·
"»»
nnoremap j gj
nnoremap k gk
let mapleader = ","
let g:mapleader = ","
nmap <leader>w :w! <cr>
nmap <leader>q :q! <cr>
nmap gnt :NERDTree <cr>

let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> ,m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> ,m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> ,m <Plug>(seeing_is_believing-mark)
autocmd FileType ruby nmap <buffer> ,c <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> ,c <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> ,c <Plug>(seeing_is_believing-clean)

" xmpfilter compatible"
autocmd FileType ruby nmap <buffer> ,r <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> ,r <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> ,r <Plug>(seeing_is_believing-run_-x)

" auto insert mark at appropriate spot."
autocmd FileType ruby nmap <buffer> ,e <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> ,e <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> ,e <Plug>(seeing_is_believing-run)
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Color scheme
"hi LineNr ctermfg=237 ctermbg=233
"hi CursorLineNr ctermfg=166 ctermbg=233
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=blue
colorscheme nguyen_ctb
let ruby_operators = 1
let ruby_space_errors = 1
"highlight NonText guibg=#060606
"highlight Folded  guibg=#0A0A0A guifg=#9090D0
