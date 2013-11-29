" vim default setting
set tabstop=4
set si
set hls

" key map
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <F7> :TlistToggle<CR>

" plugin taglist parameters
let Tlist_Inc_Winwidth=0
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1 	"quit vim if taglist is the latest window
let Tlist_Use_Right_Window = 1 	"list tag list at right side
" let Tlist_Auto_Open = 1		"auto open tags

" vim syntax highlight
syntax on

" vim line number
set nu

" plugin pathogen 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

" for MacVim
colorscheme desert
set guifont=Inconsolata:h18
