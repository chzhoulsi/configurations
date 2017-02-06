" Runtime Path Manipulation
" execute pathogen#infect()
" syntax on
" filetype plugin indent on

" VBundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/bundle/vim-fakeclip
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
"
"
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Shougo/neocomplete.vim'

" My plugins
Plugin 'vim-scripts/DrawIt'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/taglist.vim'
Plugin 'kana/vim-fakeclip'
Plugin 'chazy/cscope_maps'
" Plugin 'craigemery/vim-autotag'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
"
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Chen's Customization
color ron

syntax enable
hi Search cterm=NONE ctermfg=grey ctermbg=blue
"set tabstop=4
set tabstop=8
"set shiftwidth=4
set shiftwidth=8
"set expandtab
set noexpandtab
set nu
set hlsearch
set ic
set wrap
set wildmenu
set wildmode=list:longest,full

" 80 character rule 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Check extra space
let c_space_errors=1

let $PATH='~/local/bin/;'.$PATH

" hide warning message when switching buffer
set hidden

" Use alias in bash file
" set shell=/bin/bash\ -i

" fix alt-keys which generate <Esc>
set <M-S-h>=H
set <M-S-l>=L
set <M-S-j>=J
set <M-S-k>=K
set <M-z>=z
set <M-\>=\
set <M-/>=/
map <M-S-h> :vertical resize -5<CR>
map <M-S-l> :vertical resize +5<CR>
map <M-S-j> :res +5<CR>
map <M-S-k> :res -5<CR>
map <M-z> :tab split<CR>
map <M-\> :vsp<CR>
map <M-/> :sp<CR>

" copy to system clip board; need to comment this for fakeclip board
" set clipboard=unnamed
map <C-c> "&y

" Set Ctags "
set tags=./tags,tags;/workspace/sw/chzhou

" Set Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
 let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Set Ctrlp
let g:ctrlp_max_files=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_working_path_mode = 'ra'

" Set vim_cscope
set nocscopeverbose
set csre

" Set status bar
hi User1 term=NONE cterm=NONE ctermfg=Yellow ctermbg=Black
set laststatus=2 
set statusline=%1*%F%h%m%w\ [Time:\ %{strftime(\"%H:%M\")}]\ [Mod\ Time:\ %{strftime(\"%H:%M:%S\",getftime(expand(\"\%\%\")))}]%=\ [%p%%]\ [%l/%L]
