" vim default setting
set tabstop=4
set si
set hlsearch                " search highlighting
set history=50                " keep 50 lines of command line history
set ruler                " show the cursor position all the time
set autoread                " auto read when file is changed from outside
syntax on				 " vim syntax highlight
filetype on				"Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set showmatch                " Cursor shows matching ) and }
set showmode                " Show current mode

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" key map
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <F7> :TlistToggle<CR>

" plugin taglist parameters
let Tlist_Inc_Winwidth=0
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1 	"quit vim if taglist is the latest window
let Tlist_Use_Right_Window = 1 	"list tag list at right side
" let Tlist_Auto_Open = 1		"auto open tags

set autoindent                " auto indentation
set incsearch                " incremental search
set nobackup                " no *~ backup files
set copyindent                " copy the previous indentation on autoindenting
set ignorecase                " ignore case when searching
set smartcase                " ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab                " insert tabs on the start of a line according to context

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" TAB setting{
set expandtab        "replace <TAB> with spaces
set softtabstop=3 
set shiftwidth=3 
au FileType Makefile set noexpandtab
"}                                                              

" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
    	return '[PASTE]'
	else
	    return ''
   	endif
endfunction
"}

" C/C++ specific settings
autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" plugin pathogen 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType c set omnifunc=ccomplete#Complete

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
		  autocmd Filetype *
		              \        if &omnifunc == "" |
		              \                setlocal omnifunc=syntaxcomplete#Complete |
				      \        endif
endif

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

" for MacVim
colorscheme desert
set guifont=Inconsolata:h18

" --- Command-T
let g:CommandTMaxHeight = 15

" --- SnipMate
let g:snipMateAllowMatchingDot = 0

" --- vim-gitgutter
let g:gitgutter_enabled = 1
