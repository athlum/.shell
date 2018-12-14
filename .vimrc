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

Plugin 'mdempsky/gocode', {'rtp': 'vim/'}

Plugin 'Shougo/neocomplete.vim'

Plugin 'Shougo/neosnippet'

Plugin 'Shougo/neosnippet-snippets'

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

"neocomplete.vim -----------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#disable_auto_complete = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ neocomplete#start_manual_complete()
function! s:check_back_space() "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

"Vim-go --------------------------------------
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd BufWritePost *go silent !go build -i
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc))

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

"neosnippet ---------------------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

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
