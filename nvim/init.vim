"--------------------------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------------------------
set encoding=utf-8
set nocompatible                     " enter the current millennium, make it not compatible with VI.
set nu relativenumber                " show number as relative numbers
set autoindent                       " Auto indentation
filetype plugin indent on
set tabstop=4                        " number of visual spaces per TAB
set softtabstop=4                    " number of spaces in tab when editing
set shiftwidth=4                     " number of spaces to use for autoindent
set clipboard+=unnamedplus           " install xclip: pacman install -Syu xclip for the clipboard copy work.
set expandtab                        " expand tab to spaces so that tabs are spaces
set hidden
set mouse=a                          " The bellow option enables the use of mouse.
syntax enable                      " enable syntax and plugins (fort netrw)
" colorscheme dracula
set ignorecase                       " Ignore case in general
set smartcase                        " but become case-sensitive when uppercase is present
set linebreak                        " Break line at predefined characters
set showbreak=↪                      " Character to show before the lines that have been soft-wrapped
set signcolumn=auto                  " show sidecolumn for errors and warnings
set pumblend=0                       " transparent popup disabled. To enable change number to the maximum of 100.
set winblend=0                       " pseudo transparency for floating window
" set spell
" set spelllang=en                     " Spell languages
" set spellsuggest+=9                  " show 9 spell suggestions at most
set title
set tildeop                          " Tilde (~) is an operator, thus must be followed by motions like `e` or `w`.
set nojoinspaces                     " join lines with see SHIFT+J: https://stackoverflow.com/q/4760428/6064933
set wildmode=longest:full,full       " Display all matching files when we tab complete
set nowrap
set updatetime=300                   " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set redrawtime=10000                 " Allow more time to load syntax for large files.
set nobackup
" set undofile
set nowritebackup
set cmdheight=2                      " Give more space for displaying messages.
set list
set listchars=tab:▸\ ,trail:·
set cursorline         " highlight line
set colorcolumn=100    " highlight column
set termguicolors      " allow more colors in the terminal
set scrolloff=8
set sidescrolloff=8
set confirm
set exrc
set inccommand=split

"--------------------------------------------------------------------------------------------
" General Styling
"--------------------------------------------------------------------------------------------
highlight Comment cterm=italic
highlight CursorLine ctermbg=Black cterm=None
highlight CursorLineNr ctermbg=Black cterm=bold ctermfg=Green
highlight LineNr ctermbg=Black ctermfg=White


highlight SpellBad ctermbg=Red ctermfg=White
highlight SpellCap cterm=None ctermbg=None
highlight SpellRare cterm=None ctermbg=None
highlight SpellLocal cterm=Underline ctermbg=None

"--------------------------------------------------------------------------------------------
" General Styling
"--------------------------------------------------------------------------------------------
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2




" Completion behavior
" set completeopt+=noinsert  " Auto select the first completion entry
" set completeopt+=menuone  " Show menu even if there is only one item
" set completeopt-=preview  " Disable the preview window

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Tag JUMPING
command! MakeTags !ctags -R .

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c



"--------------------------------------------------------------------------------------------
" key maps
"--------------------------------------------------------------------------------------------
let mapleader="\<space>"
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :edit ~/.config/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<cr>
nmap <leader>Q :bufdo bdelete<cr>

" change between windows faster
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" allow to open file with keys gf even if it doesn't exist
map gf :edit <cfile><cr>

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
" vnoremap y myy`y
" vnoremap Y myY`y




"--------------------------------------------------------------------------------------------
" plugins
"--------------------------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin(data_dir . '/plugins')
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/jsonc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/docgenerator.vim
source ~/.config/nvim/plugins/fern.vim
source ~/.config/nvim/plugins/fugitive.vim
" source ~/.config/nvim/plugins/projectionist.vim


" Plug 'lambdalisue/fern.vim'
" source ~/.config/nvim/plugins/arduino.vim
" source ~/.config/nvim/plugins/context-commentstring.vim
" source ~/.config/nvim/plugins/dispatch.vim
" source ~/.config/nvim/plugins/editorconfig.vim
" source ~/.config/nvim/plugins/eunuch.vim
" source ~/.config/nvim/plugins/exchange.vim
" source ~/.config/nvim/plugins/firenvim.vim
" source ~/.config/nvim/plugins/floaterm.vim
" source ~/.config/nvim/plugins/heritage.vim
" source ~/.config/nvim/plugins/lastplace.vim
" source ~/.config/nvim/plugins/lion.vim
" source ~/.config/nvim/plugins/markdown-preview.vim
" source ~/.config/nvim/plugins/nerdtree.vim
" source ~/.config/nvim/plugins/pasta.vim
" source ~/.config/nvim/plugins/peekaboo.vim
" source ~/.config/nvim/plugins/polyglot.vim
" source ~/.config/nvim/plugins/quickscope.vim
" source ~/.config/nvim/plugins/repeat.vim
" source ~/.config/nvim/plugins/rooter.vim
" source ~/.config/nvim/plugins/sayonara.vim
" source ~/.config/nvim/plugins/smooth-scroll.vim
" source ~/.config/nvim/plugins/splitjoin.vim
" source ~/.config/nvim/plugins/targets.vim
" source ~/.config/nvim/plugins/textobj-xmlattr.vim
" source ~/.config/nvim/plugins/tmux-navigator.vim
" source ~/.config/nvim/plugins/unimpaired.vim
" source ~/.config/nvim/plugins/vim-test.vim
" source ~/.config/nvim/plugins/visual-multi.vim
" source ~/.config/nvim/plugins/visual-star-search.vim
" source ~/.config/nvim/plugins/which-key.vim

call plug#end()
doautocmd User PlugLoaded
