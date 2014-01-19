" To get 256 colors
set t_Co=256

call pathogen#infect()
call pathogen#helptags()

" Open files with <leader>f
map <leader>f <ESC>:CommandT<CR>
map <leader>q <ESC>:qall<CR>

"set statusline=[%n]\ %<%f\ %([%1*%M%*%R%Y]%)\ \ \ [%{Tlist_Get_Tagname_By_Line()}]\ %=%-19(\LINE\ [%l/%L]\ COL\ [%02c%03V]%)\ %P

"------------------
"-- TEXT OPTIONS
"------------------
 
" tab (character) is 8 spaces
"set tabstop=8
  
" tab (key) is 8 spaces
"set softtabstop=8

" indent width is 8 spaces
"set shiftwidth=8

" expand tabs to spaces by default
"set expandtab
" ct as vi
set nocompatible
 
" turn off the beep!
set noerrorbells

" dont know what this does really, just use it
set hidden
 
" search as we type
set incsearch
  
" ignore case if only lowercase chars used, otherwise
" use case, use \C to get Case Sensitive
set ignorecase
set smartcase
 
" update the title of the window...
set title
 
" alot of undolevels
set undolevels=500

" always display the statusline
set laststatus=2

" Change the color schema
colorscheme molokai

" some feedback on position
set ruler

" highlight all its matches.
set hlsearch

" show the current mode
set showmode

set pastetoggle=<F6>

"-------------------------------------------------------------------------------
"-- AUTOCOMMANDS
"-------------------------------------------------------------------------------
" 
" enable some important things
syntax on
filetype on

"FIXME: add colors for some C99 stuff
let c_C99=1
let c_c_vim_compatible=1
let c_comment_strings=1
let c_comment_numbers=1
let c_comment_types=1
let c_warn_nested_comments=1
let c_cpp_comments=1
let c_ansi_typedefs=1
let c_ansi_constants=1
let c_posix=1
let c_comment_date_time=1
let c_minlines=25
let c_C89=1
let c_gnu=1
let c_syntax_for_h=1

"-------------------------------------------------------------------------------
"-- GENERAL MAPPINGS
"-------------------------------------------------------------------------------
 
" unmap arrows/pgdn/pgup so you learn to use hjkl
"map <Left> \
"map <Right> \
"map <Up> \
"map <Down> \
"map <PageUp> \
"map <PageDown> \
"  
"imap <Left> <nop>
"imap <Right> <nop>
"imap <Up> <nop>
"imap <Down> <nop>
"imap <PageUp> <nop>
"imap <PageDown> <nop>
   
nnoremap L :tabNext<CR>
nnoremap H :tabPrev<CR>

" move the current line up or down
nmap <C-j> :m+<CR>
nmap <C-k> :m-2<CR>
imap <C-j><C-O> :m+<CR><C-O>
imap <C-k><C-O> :m-2<CR><C-O>
  
" move the current line left or right
nmap <C-h> <<
nmap <C-l> >>
imap <C-h><C-O> <<
imap <C-l><C-O> >>
" change to tab #
map 1 :tabn 1<CR>
map 2 :tabn 2<CR>
map 3 :tabn 3<CR>
map 4 :tabn 4<CR>
map 5 :tabn 5<CR>
map 6 :tabn 6<CR>
map 7 :tabn 7<CR>
map 8 :tabn 8<CR>
map 9 :tabn 9<CR>

map <C-Tab> :tabn <CR>
map <C-S-Tab> :tabp <CR>
"map <C-w> :tabnew <CR>

" unused
"map <F1>
  
" mappings for taglist, toggle the display of taglist
nnoremap <silent> <F2> :Tlist<CR>
inoremap <silent> <F2> <ESC>:Tlist<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
inoremap <silent> <F3> <ESC>:NERDTreeToggle<CR>
  
"map <F3>
"map <F4>
    
" use these for :grep or when using makeprg with python/gcc
map <F5> :call ToggleCwindow() <CR>
imap <F5> <ESC>:call ToggleCwindow() <CR>i
map <F6> :cnext <CR>
imap <F6> <ESC>:cnext <CR>i
map <S-F6> :cprev <CR>
imap <S-F6> <ESC>:cprev <CR>i

" whitespace toggle
map <F9> :call Toggle_2_4_8_tab()<CR>
imap <F9> <ESC>:call Toggle_2_4_8_tab()<CR>i
  
map <F4> :call ToggleShowWhitespace()<CR>
imap <F4> <ESC>:call ToggleShowWhitespace()<CR>i
" wrap toggle
map <F11> :set wrap!<CR>:set wrap?<CR>
imap <F11> <ESC> :set wrap!<CR>:set wrap?<CR>i
 
" toggle pase, Want feedback in both modes
nnoremap <F12> :set paste!<CR>:set paste?<CR>
set pastetoggle=<F12>
 
" ctags maps, remap goto, go back
nnoremap <C-Y> <C-]>
nnoremap <C-U> <C-T>

"------------------
"-- TAGLIST
"------------------
 
" settings for taglist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Compact_Format = 1
let Tlist_Display_Prototype = 0
let Tlist_Show_Menu = 1
let Tlist_Display_Tag_Scope = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Process_File_Always = 1
let Tlist_Max_Tag_Length = 20
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_SingleClick = 1
"let Tlist_Use_Right_Window = 1
let tlist_c_settings = 'c;f:FUNCTIONS'
let TlistHighlightTag=2

let g:NERDTreeWinPos = "right"
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore=['\~', '\.o', '\.out', '\.symvers', '\.order', '^\.git$']
let NERDTreeShowBookmarks=1
let NERDTreeMouseMode=2


set title
set co=80
set nu
set cul
set cc=80
set ai
set ts=8
set noet

" Awsome trict to write as sudo
map sw <ESC>:w !sudo tee % > /dev/null<CR>

"toggle whitespace
function! ToggleShowWhitespace()
if !exists('b:showWS')
let b:showWS = 0
endif
let b:showWS = !b:showWS
if b:showWS == 1
call ShowWhitespace()
else
call HideWhitespace()
endif
endfunction

highlight Tabs term=standout cterm=standout gui=standout
highlight link LineEndWS Error

"FIXME add missing mellanslag
let g:showcw = 0
function! ToggleCwindow()
if g:showcw == 0
:copen
let g:showcw = 1
else
:cclose
let g:showcw = 0
endif
endfunction

" toggle whitespace
function! ToggleShowWhitespace()
if !exists('b:showWS')
let b:showWS = 0
endif
let b:showWS = !b:showWS
if b:showWS == 1
call ShowWhitespace()
else
call HideWhitespace()
endif
endfunction
highlight Tabs term=standout cterm=standout gui=standout
highlight link LineEndWS Error
"FIXME add missing mellanslag

"show tabs and whitespace at eol
function! ShowWhitespace()
let b:showWS = 1
syntax match Tabs "\t" containedin=ALL
syntax match LineEndWS "\s\+$" containedin=ALL
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/
echo "show Whitespace"
endfunction
 
" hide tabs and whitespace at eol
function! HideWhitespace()
let b:showWS = 0
syntax clear Tabs
syntax clear LineEndWS
echo "hide Whitespace"
endfunction
