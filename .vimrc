set t_Co=256
set nocompatible  
filetype off
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/fugitive.vim
"set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/Vundle.vim
set laststatus=2
call vundle#begin()

"Bundle 'thoughtbot/vim-rspec'

Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'shougo/vimproc', { 'build' : { 'mac' : 'make -f make_mac.mak'}, }
Bundle 'shougo/vimshell'
Bundle 'Shougo/unite.vim'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'tomtom/tlib_vim'
Bundle 'wookiehangover/jshint.vim'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '>'
let g:bufferline_echo = 0

filetype plugin indent on

syntax on 
set number ruler tabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=4 shiftwidth=4
set et|retab
set ai
set si
set rnu
set list listchars=tab:……,trail:·
set noswapfile
"»»
nnoremap j gj
nnoremap k gk
let mapleader   = ","
let g:mapleader = ","
nmap gnt :NERDTree <cr>
"save, quit
nmap <leader>w :w! <cr>
nmap <leader>q :q! <cr>
"whitespace
nmap <enter> i<enter><esc>l
nmap <space> i<space><esc>l
nmap <tab> >>
imap <c-l> <esc>la
"comment
nmap <leader>/ 0i#<esc>
"navigating through splits
nmap wj :winc j <cr>
nmap wk :winc k <cr>
nmap wl :winc l <cr>
nmap wh :winc h <cr>
"shell"
nmap <leader>sh :VimShell <cr>
"buffer
nmap <leader>ls :ls <cr>
imap <c-d> <esc>ciw
"Unite
nmap <leader>b :Unite buffer<cr>

autocmd FileType ruby imap <leader>aa attr_accessor
autocmd FileType ruby imap <leader>ar attr_reader
"Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nmap <leader>t :UniteWithProjectDir -start-insert file<cr>
nmap <leader>b :Unite buffer<cr>
"Tabularize
nmap <leader>a= :Tabularize /=<cr>
vmap <leader>a= :Tabularize /=<cr>
nmap <leader>a: :Tabularize /:\zs<cr>
vmap <leader>a: :Tabularize /:\zs<cr>
let g:airline#extensions#tabline#enabled = 1

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
"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

"snipMate
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

"JsHint
let JSHintUpdateWriteOnly=1

" Color scheme
"hi LineNr ctermfg=237 ctermbg=233
"hi CursorLineNr ctermfg=166 ctermbg=233
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=blue
colorscheme nguyen_ctb
let ruby_operators = 1
hi CursorLine cterm = NONE ctermbg = 235 ctermfg = white

"let ruby_space_errors = 1
"highlight NonText guibg = #060606
"highlight Folded  guibg = #0A0A0A guifg = #9090D0
"let g:colors_name = "nguyen_ctb"

let g:airline_theme = 'tomorrow'

hi SpellBad ctermbg = 52
hi SpellCap ctermbg = 52
