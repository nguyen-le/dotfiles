set t_Co=256
set encoding=utf-8
set nocompatible
filetype off
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/fugitive.vim
"set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/Vundle.vim
set laststatus=2
call vundle#begin()
"Bundle 'thoughtbot/vim-rspec'

Bundle 'airblade/vim-gitgutter'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'
Bundle 'hdima/python-syntax'
Bundle 'honza/vim-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'joonty/vdebug'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'majutsushi/tagbar'
Bundle 'pangloss/vim-javascript'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'shougo/vimproc', { 'build' : { 'mac' : 'make -f make_mac.mak'}, }
Bundle 'shougo/vimshell'
Bundle 'Shougo/unite.vim'
Bundle 'Shutnik/jshint2.vim'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tlib_vim'
Bundle 'wookiehangover/jshint.vim'
Bundle 'Valloric/vim-operator-highlight'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

syntax on
set number ruler tabstop=2 shiftwidth=2
set switchbuf=usetab noshowmode
nmap <F8> :sbnext<CR>
nmap <S-F8> :sbprevious<CR>

autocmd FileType javascript setlocal tabstop=4 shiftwidth=4
autocmd FileType scss setlocal tabstop=4 shiftwidth=4
autocmd FileType css setlocal tabstop=4 shiftwidth=4 et|retab
autocmd FileType php setlocal tabstop=4 shiftwidth=4
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 et|retab
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 et|retab
autocmd FileType html setlocal tabstop=4 shiftwidth=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 et|retab
autocmd FileType cucumber setlocal tabstop=2 shiftwidth=2 et|retab
autocmd FileType ruby nmap <leader><leader>r :!ruby % <cr>
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ai
set si
set rnu
set foldmethod=indent
set foldlevel=1
set list listchars=tab:……,trail:·
set noswapfile
set cc=80
set ignorecase smartcase incsearch
"»»
nnoremap j gj
nnoremap k gk
let mapleader   = ","
let g:mapleader = ","
let python_highlight_all = 1
let g:ophigh_color = 220
let g:ophigh_filetypes_to_ignore = {'php' : 1}
nmap gnt :NERDTree <cr>
nmap gnf :NERDTreeFind <cr>
"nmap <leader>f :NERDTreeFind <cr>
nmap <leader>f za
"ctags
nmap <leader>c :CtrlPTag <cr>
nmap <leader>. :TagbarToggle <cr>
"save, quit
tmap kj <C-\><C-n>
nmap <C-k><C-j> :nohls <cr>
nmap <leader>z :vsp<cr>wl:e term://zsh <cr>i
imap kj <esc>l
nmap <leader>w :w! <cr>
nmap <leader>q :q! <cr>
"whitespace
nmap <enter> i<enter><esc>l
nmap <space> i<space><esc>l
nmap <tab> >>
imap <c-l> <esc>la
imap <c-e> <esc>A
"comment
nmap <leader>/ 0i#<esc>
"navigating through splits
nmap wj :winc j <cr>
nmap wk :winc k <cr>
nmap wl :winc l <cr>
nmap wh :winc h <cr>
"resizing windows
nmap <leader>vk :res +5 <cr>
nmap <leader>vj :res -5 <cr>
nmap <leader>vh :vert res -5 <cr>
nmap <leader>vl :vert res +5 <cr>
nmap <leader><leader>vk :res +10 <cr>
nmap <leader><leader>vj :res -10 <cr>
nmap <leader><leader>vh :vert res -10 <cr>
nmap <leader><leader>vl :vert res +10 <cr>
"shell"
"nmap <leader>sh :VimShell <cr>
"buffer
nmap <leader>s :e# <cr>
imap <c-d> <esc>ciw
"Vdebug
"let g:vdebug_options = { "server": '192.168.115.128' }
let g:vdebug_options = { "server": '192.168.115.1' }
"Unite
nmap <leader>b :Unite buffer<cr>

"Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nmap <leader>tt :UniteWithProjectDir -start-insert file<cr>
nmap <leader>tf :Unite file_rec<cr>
nmap <leader>b :Unite buffer<cr>
"Tabularize
nmap <leader>a= :Tabularize /=<cr>
vmap <leader>a= :Tabularize /=<cr>
nmap <leader>a: :Tabularize /:\zs<cr>
vmap <leader>a: :Tabularize /:\zs<cr>

"Commands
command BC bn | sp | bp | bd!


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
autocmd BufNewFile,BufReadPost *.tpl set filetype=html

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

au BufRead *.ejs set filetype=eruby syntax=html

let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_regexp = 1
"let g:airline#extensions#ctrlp#color_template = 'normal'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#symbol = '" "'
let g:airline_powerline_fonts=1
"set guifont=Inconsolata\ for\ Powerline
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '.'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_section_c = '%f'
let g:airline_theme = 'tomorrow'
let g:bufferline_echo = 1
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#default#section_truncate_width = {
		\ 'b': 79,
		\ 'x': 60,
		\ 'y': 88,
		\ 'z': 45,
		\ }
let g:airline#extensions#default#layout = [
		\ [ 'a', 'b', 'c' ],
		\ [ 'x', 'y', 'z', 'warning' ]
		\ ]
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Color scheme
"hi LineNr ctermfg=237 ctermbg=233
"hi CursorLineNr ctermfg = 166 ctermbg = 233
"hi cursorline cterm = NONE ctermbg = 235 ctermfg = white
colorscheme ctb
let ruby_operators = 1

"let ruby_space_errors = 1
"highlight NonText guibg = #060606
"highlight Folded  guibg = #0A0A0A guifg = #9090D0
"let g:colors_name = "nguyen_ctb"


hi SpellBad ctermbg = 52
hi SpellCap ctermbg = 52
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
