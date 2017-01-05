filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

Plugin 'cscope.vim'

Plugin 'autoload_cscope.vim'

Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_authorName = 'Ankit Srivastava <asrivast@gatech.edu>'
let g:DoxygenToolkit_versionString = '1.0'

map <leader>dxa :DoxAuthor<CR>
map <leader>dx :Dox<CR>

" comment
Plugin 'scrooloose/nerdcommenter.git'
map <C-n> :NERDTreeToggle<CR>

Plugin 'scrooloose/nerdtree.git'

" VIM Latex Suite
Plugin 'jcf/vim-latex'
" disable automatic conversion of double quotes
let g:Tex_SmartKeyQuote=0
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'

" checks syntax
Plugin 'scrooloose/syntastic.git'
" always show the error list at the bottom of the screen
let g:syntastic_always_populate_loc_list=1
" configure syntastic for python to use also use PEP8
let g:syntastic_python_checkers=['python', 'pep8']

" automatic completion
Plugin 'Valloric/YouCompleteMe.git'
" Configure YouCompleteMe.
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_confirm_extra_conf=0
" set completeopt-=preview
" use the YCM default clang flags config in case none is set
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
" function for checking if the current file is supported
function! Ycm_supports_file()
    let cur_ft = &filetype
    let supported_ft = 0
    for ft in ['c', 'cpp', 'objc', 'objcpp', 'python', 'cs']
        if ft == cur_fT
            let supported_ft = 1
        endif
    endfor
    return supported_ft
endfunction
" uses the Ycm goto declaration or the vim 'gD', depending
" on whether the current file type is supported by Ycm
function! Ycm_goto_decl()
    if Ycm_supports_file()
        exec "YcmCompleter GoToDefinitionElseDeclaration"
    else
        call feedkeys('gD')
    endif
endfunction
" map the previous function to leader + D
nnoremap <leader>D :call Ycm_goto_decl()<CR>

Plugin 'scons.vim'
" always set file type of SConstruct/SConscript
autocmd BufNew,BufRead SCons* set filetype=scons

" for markdown preview
Plugin 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1

filetype plugin indent on
