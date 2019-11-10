"---------PLUGIN SECTION----------------"
"---------------------------------------"
:call plug#begin()

"A light and configurable statusline/tabline plugin for Vim"
Plug 'itchyny/lightline.vim'

"Fuzzy Finder, you know the drill"
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'

"Cursores múltiplos"
Plug 'terryma/vim-multiple-cursors'

"Cria () "" etc, aos pares"
Plug 'jiangmiao/auto-pairs'

"editar "" () etc de um lado e outro"
Plug 'tpope/vim-surround'

"Goes well with fuzzy finder, keep vim organized"
Plug 'scrooloose/nerdtree'

"Vim sugar for the UNIX shell commands"
Plug 'tpope/vim-eunuch'

"HTML and JS daddy"
Plug 'mattn/emmet-vim'

"Show errors you may have wile writing"
Plug 'w0rp/ale'

"HARD FOKIN MODE MATE"
Plug 'wikitopian/hardmode'

"Syntastic, syntax checking plugin"
Plug 'vim-syntastic/syntastic'

"Auto-complete"
Plug 'Shougo/deoplete.nvim'

"Haskell Plugin
Plug 'neovimhaskell/haskell-vim'

call plug#end()
"--------------------------------------"
"----------- PLUGIN ENDS HERE----------"
"--------------------------------------"

:set number 
:set rnu

:colorscheme jellybeans

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"map da key para NerdTree. Passa a ctrl+O"
map <C-o> :NERDTreeToggle<CR>

"Syntastic config mate"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1"
"let g:syntastic_auto_loc_list = 1"
"let g:syntastic_check_on_open = 1"
"let g:syntastic_check_on_wq = 0

"Use deoplete.
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

"Ale plugin off"
let g:ale_enabled = 0

"Takes auto comentary when writing c(at least, maybe more) 
set formatoptions-=cro

"  -------------------- Haskell -----------------------
"  ----------------------------------------------------
"
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

"  ------------------- Haskell Ends Here ---------------
"  -----------------------------------------------------
