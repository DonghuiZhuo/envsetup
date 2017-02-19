se nu

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()

let g:go_highlight_fields = 1

set hlsearch
set nocompatible

syntax enable
filetype plugin on

" Finding Files
" Provides tab-completion for all file related searches
set path+=**

" Display all matching files when we tab complete
set wildmenu

" TAG JUMPING:
" Create the 'tags' file (may need to install ctag first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" Use ^] to jump to tag under cursor
" Use g^] for ambiguous tags
" Use ^t to jump back up the tag stack
"

" AUTOCOMPLETE:
" The good stuff is documented in |ins-completion|
" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list
"
" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0 		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1		" open splits to the right
let g:netrw_liststyle=3 	" tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'
" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t top open in an h-split/v-split/tab
" check |netrw-browse-maps| for more mappings 
