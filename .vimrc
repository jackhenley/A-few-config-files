"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               																													
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗									  
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝										
"               ██║   ██║██║██╔████╔██║██████╔╝██║     										
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     										
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗										
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝										
"               																													
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    


"" SETTINGS------------------------------------------------------------{{{



set clipboard+=unnamed
"enable syntax highlighting
syntax on
"add line numbers
set number

" Highlight cursor line underneath the cursor horizontally.
"set cursorline

" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn
	
set tabstop=4       " A tab character is displayed as 4 spaces width
"^not working for some reason
set shiftwidth=4    " Auto-indent uses tabs of width 8

"Number of spaces a <TAB> feels like in the file
set softtabstop=4

"Use space characters instead of tabs.
set expandtab

"autoindent
set autoindent
"smart autoindent <?>
"set smartindent

" Do not save backup files.
"set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
"set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
:set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
"set ignorecase

" Unless searching with capitol letters
set smartcase

"^But not for autocomplete
set infercase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
"set history=1000


" Enable auto completion menu after pressing TAB.
"set wildmenu

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


"configure colors - these are some good ones:
"
"color molokai 
color desert
"color sorbet

set background=dark
"hi Comment ctermbg=221

" Save folds and cursor position, but not buffer-local options like expandtab
set viewoptions=folds,cursor

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" More Vimscripts code goes here.


" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" Make sure Vim returns to the same line when you reopen a file.
"augroup line_return
"    au!
"    au BufReadPost *
"        \ if line("'\"") > 0 && line("'\"") <= line("$") |
"        \     execute 'normal! g`"zvzz' |
"        \ endif
"augroup END

"Save Folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END


" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.





" }}}

 

filetype plugin indent on

" Force tab settings for every filetype
augroup force_tabs
  autocmd!
  autocmd FileType * setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
augroup END
