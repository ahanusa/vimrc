
let mapleader=","


" allows airline to appear all of the time
"set laststatus=2

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" # Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/oceandeep'
Plugin 'rakr/vim-rakr-light'
Plugin 'joshdick/onedark.vim'
Plugin 'Donearm/Laederon'
Plugin 'flazz/vim-colorschemes'
"Plugin 'chriskempson/base16-vim'

" # Enhanced Syntax
Plugin 'othree/yajs.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'

" # Extra Syntax
"Plugin 'dag/vim-fish'
"Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'

" Functionality
"
" ### Indispensable

" ctrlp is file fuzzy search
Plugin 'kien/ctrlp.vim'
" Ack.vim uses ack to search within files
Plugin 'mileszs/ack.vim'
"Airline provides a stylish appearance for the styleline
Plugin 'vim-airline/vim-airline'
" Syntastic provides syntax info
Plugin 'scrooloose/syntastic'
"Show git info in the gutter, sad that it and syntastic fight for space though
"Plugin 'airblade/vim-gitgutter'
"Integrate with tmux
Plugin 'christoomey/vim-tmux-navigator'
"Provides Sublime-Text like smart completion of braces, parens and such
Plugin 'Raimondi/delimitMate'
" Great helpful autocompletion (requires a separate compile step)
Plugin 'Valloric/YouCompleteMe'
"Easy commenting in Vim
Plugin 'tpope/vim-commentary'
"Nerdtree provides a file explorer, which is sometimes useful. Mostly ctrlp handles file finding though
Plugin 'scrooloose/nerdtree'
"Gives smart completions for Javascript
Plugin 'ternjs/tern_for_vim'
" Commenting
Plugin 'scrooloose/nerdcommenter'

" ### Use sometimes

" fugitive provides git bindings in Vim.  Don't use too much, but useful for blame
Plugin 'tpope/vim-fugitive'
" Surround is useful for adding surrounding tags to elements (especially html and quotes)
Plugin 'tpope/vim-surround'
" Allows vim-surround to be used with . command
Plugin 'tpope/vim-repeat'
"Adds convenience stuff for writers
Plugin 'reedes/vim-pencil'
"Provide snippets functionality in Vim
Plugin 'SirVer/ultisnips'
"Standardize whitespace
Plugin 'editorconfig/editorconfig-vim'

" Experimenting with these

Plugin 'tpope/vim-unimpaired'
Plugin 'itspriddle/vim-marked'

" Not Using anymore/right now
" Provides an alternative way to move quickly through files
"Plugin 'Lokaltog/vim-easymotion'
" Provides integration with dash.app.  I mostly query dash directly
"Plugin 'rizzatti/dash.vim'
"Tries to handle ctrlp/ack.vim/buffer switching tasks, but lacks the attention
"to detail and documentation of those plugins
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/vimproc.vim' "Unite dependency
" Cool way of setting up projects
"Plugin 'tpope/vim-projectionist'
"Plugin 'merlinrebrovic/focus.vim'
"Plugin 'tpope/vim-eunuch'
"Plugin 'terryma/vim-multiple-cursors'

"End Vundle
call vundle#end()

" "Vundle ended so reenable filetypes
filetype plugin indent on

" "Pull in matchit.vim, which is already bundled with Vim
runtime! macros/matchit.vim

" Appearance
" ==========

" "Syntax highlighting should be in 256 colors
syntax on
syntax enable
set t_Co=256

"if has('gui_running') 
"   colorscheme solarized 
"   set background=light 
"   set guifont=Source\ Code\ Pro\ For\ Powerline 
"else 
"   let base16colorspace=256  " Access colors present in 256 colorspace 
"   colorscheme solarized 
"   set background=light 
"endif 

  "
" Color Schemes - bytefluent.com/vivify
" ==================
"
" LIGHT
"colorscheme laederon

" DARK
"colorscheme candyman
"colorscheme corporation
colorscheme busybee
"colorscheme zenburn
"colorscheme xoria256



" Sanity Config (Don't edit text like an animal)
" ==============================================
set nocompatible                " Use vim rather than vi settings
set encoding=utf-8              " standard encoding
"set relativenumber             " prefer absolute #
set number                      " Its nice to see line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history (its not 1990)
"Don't dump distracting text to terminal during searches!
set shellpipe=2>/dev/null>
set re=1                        "Use a non-broken regex engine for syntax highlight    ing

" General Config
" ==============

set showcmd                     " Show incomplete cmds down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set laststatus=2                " Always show status line
set splitright                  " Opens vertical split right of current window
set splitbelow                  " Opens horizontal split below current window
set shortmess=filnxtToOI        " see :help shortmess
"set t_ti= t_te=                 "Use a different terminal to run external commands
" Set shell to bash (fish and VIM don't play well together)
set shell=bash

" Mouse
" ======

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" Search Settings
" ===============

set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Persistent Undo
" ===============

" Keep undo history across sessions, by storing in file
" Only works in MacVim (gui) mode
if has('gui_running')
  set undodir=~/.vim/backups
  set undofile
endif

" Indentation and Display
" =======================

" We want to replace tabs with spaces and have 2 space width indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines

" Folds
" =====
set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default
" nnoremap <space> za
" vnoremap <space> zf


" Completion
" ==========

"set wildmode=list:longest
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*


" Scrolling
" =========

" Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1


" Copy Paste improvements
"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Custom commands
" ===============

"Let K be the opposite of J
map K i<Enter><Esc>
"\rr => refresh vimrc
map <leader>rr :source ~/.vimrc<CR>


"PJ
"
function! PJOpen()
   enew 
   read ! pj
endfunction

function! OpenFile()
    let bufferno = bufnr('%')
    exe 'edit' . getline('.')
    exe 'bw!' . bufferno
endfunction

command! PJOpen call PJOpen()

command! OpenFile call OpenFile()

" Plugin Options
" ==============


" CTRL+P options

set wildignore+=*/wcui/dist/*
let g:ctrlp_user_command = 'ag %s -i --nocolor --ignore .git  --ignore .svn  --ignore .hg  --ignore .DS_Store  --ignore "static"  --ignore "**/*.pyc"  -g ""'

" Airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set noshowmode " Let airline handle the mode display

"Syntastic Options
let g:syntastic_check_on_open = 1
map <Leader>e :Errors<cr>
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_javascript_checkers = ["eslint"]


"NerdTree Options
" much of this is from http://github.com/spicycode/Vimlander-2-The-Quickening
map <Leader>d :NERDTreeToggle<CR> :set number<CR>
nmap <C-t> :NERDTreeToggle<CR>
" Enable nice colors
let NERDChristmasTree = 1
" Make it easy to see where we are
let NERDTreeHighlightCursorline = 1
" Make bookmarks visible
let NERDTreeShowBookmarks = 1
" Show hidden files
let NERDTreeShowHidden = 1
" Don't hijack NETRW
let NERDTreeHijackNetrw = 0
let NERDTreeHijackNetrw = 1
let NERDTreeIgnore=['\.$', '\~$']
map <Leader>f :NERDTree<CR><C-w>p:NERDTreeFind<CR>


"YouCompleteMe options
let g:ycm_min_num_of_chars_for_completion=3

"Utisnips config

"" Trigger configuration. Can't use tab with YouCompleteMe
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

" Edit snippets in a split
let g:UltiSnipsEditSplit='vertical'

"Tmux (Doing this again because Neovim thats why)
nnoremap <silent> <ctrl-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <ctrl-l> :TmuxNavigateRight<cr>


"Unite.vim (not currently in use, but saving for future)

" let g:unite_split_rule = "botright"
" " let g:unite_force_overwrite_statusline = 0
" let g:unite_winheight = 10
" let g:unite_source_rec_async_command= 'ack --nogroup --hidden -g ""'
" " " replace ctrl-p
" " "call unite#filters#matcher_default#use(['matcher_fuzzy'])
" " nnoremap <C-p> :<C-u>Unite -start-insert file_rec/async<cr>
" nnoremap <leader>a :Unite -start-insert -silent -buffer-name=ag grep:.<CR>

"Markdown options
let g:vim_markdown_folding_disabled=1
let g:pencil#wrapModeDefault = 'hard'   " or 'soft'

" Pencil Options
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType text call pencil#init({'wrap': 'hard'})
augroup END

nnoremap <silent> <leader>ps :SoftPencil<cr>
nnoremap <silent> <leader>ph :HardPencil<cr>
nnoremap <silent> <leader>pn :NoPencil<cr>
nnoremap <silent> <leader>pt :TogglePencil<cr>

"Treat es6 as js
autocmd BufNewFile,BufRead *.es6   set filetype=javascript

"Typescript
let g:syntastic_typescript_tsc_args ='-t ES5 --module commonjs'

"Tern for es6
"let g:tern#command=['/usr/local/bin/node', '/Users/ben/Code/projects/tern-es6/bin/tern']
