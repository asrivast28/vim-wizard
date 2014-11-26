set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" load vundle plugins 
source $HOME/.vim/vundle_plugins.vim

" set file format to unix, always
set ff=unix
" enable mouse: jump to the clicked-on position
set mouse=a
" Enable better indentation.
set autoindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" use spaces instead of tabs
set expandtab
" command-line completion
set wildmenu
" expand wildmenu
set wildmode=full

" jump to the matching brace when one is inserted
set showmatch
" remove toolbar
set guioptions-=T
" display ruler in status bar
set ruler
" hightlight searches
set hlsearch
" ignore case while searching
set ignorecase
" use case information while searching, only if there are uppercase characters
set smartcase
" syntax highlighting
syntax on
filetype plugin indent on
" change working directory
autocmd BufEnter * lcd %:p:h
" virtual edit in blocks
set virtualedit=block
" no need to add modifiers during pattern search 
set magic
" switch off automatic creation of backup files
set nobackup
set nowb
" no swap files
set noswapfile
" buffers are saved, can switch from unsaved buffer
set hidden
" disable visual alarming
" set visualbell
" Disable error bells.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" scroll when 3 lines from border (instead of when exactly at the border)
set scrolloff=3
" line numbering
set number
" no line wrapping
set nowrap

"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "let cmd = '""' . $VIMRUNTIME . '\diff"'
      "let eq = '"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

" enable automatic text wrapping, and enable english spell check
autocmd BufRead,BufNewFile  *.tex setlocal tw=80 spell spelllang=en_us
