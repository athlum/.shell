"Personal Vim Settings -----------------------

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized
set number 
set backspace=indent,eol,start 
set cindent 
set expandtab 
set tabstop=4 
set shiftwidth=4 
let &termencoding=&encoding 
set fileencodings=utf-8,gbk 
highlight LineNr ctermfg=gray
filetype on 
filetype plugin on 
filetype indent on 

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

"Vundle Setting ------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'SirVer/ultisnips'

" Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

" Plugin 'Shougo/neosnippet'

" Plugin 'Shougo/neosnippet-snippets'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'bling/vim-bufferline'

Plugin 'tpope/vim-fugitive'

Plugin 'powerline/fonts'

Plugin 'majutsushi/tagbar'

Plugin 'benmills/vimux'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

Plugin 'ryanoasis/vim-devicons'

Plugin 'ryanoasis/nerd-fonts'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Vim-go --------------------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc))
au FileType go imap <tab> <C-X><C-O>

"deoplete.nvim-------------------------------
let g:deoplete#enable_at_startup = 1

"ultisnips ----------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"vim-airline --------------------------------
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
set guifont=Anonymice\ Powerline:h14
let w:airline_disabled = 0
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

"tagbar ------------------------------------=
let g:tagbar_width=30
nmap <F10> :TagbarToggle<CR>
autocmd vimenter * :TagbarToggle

" NerdTree ----------------------------------
let g:nerdtree_tabs_autoclose=1
" let g:nerdtree_tabs_open_on_console_startup=1
nmap <s-tab> :NERDTreeTabsToggle<CR>
" nmap nn :call g:NERDTree.ForCurrentTab().getRoot().refresh()<CR>
autocmd vimenter * NERDTree | wincmd p
autocmd BufWritePost * call g:NERDTree.ForCurrentTab().getRoot().refresh()

"vimux --------------------------------------
let g:VimuxHeight=15
let g:VimuxUseNearest=0
autocmd vimenter * VimuxRunCommand("")
autocmd quitpre * if tabpagenr('$') == 1 | :execute 'VimuxCloseRunner' | endif

"buffer map ---------------------------------
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
" nmap bd :bdelete<CR>

"cursor settings ----------------------------
set cursorcolumn
set cursorline
