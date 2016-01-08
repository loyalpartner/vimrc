filetype off
if &shell =~# 'fish$'
  set shell=bash
endif

call plug#begin('~/.vim/bundle')
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc', {'do': 'yse \| make'}
Plug 'SirVer/ultisnips', {'do': 'yes \| git checkout me'}
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-css-color'
Plug 'dag/vim-fish'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'heavenshell/vim-jsdoc'
Plug 'janko-m/vim-test'
Plug 'junegunn/vim-easy-align'
Plug 'marijnh/tern_for_vim', {'do': 'yes \| npm update --upgradeAll'}
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'othree/xml.vim'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-session'
Plug 'xolox/vim-shell'
call plug#end()

" developing plugins
for path in split(glob('~/vim-dev/*'), '\n')
  exe 'set rtp+=' . path
endfor
filetype plugin indent on
syntax enable
" config files
for file in split(glob('~/.vim/vimrc/*.vim'), '\n')
  exe 'source' file
endfor

iabbrev @G chemzqm@gmail.com
iabbrev @C Copyright 2015 Qiming Zhao, all rights reserved
iabbrev mocah mocha
iabbrev fi if

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

call SetupCommandAbbrs('C', 'Glcd')
call SetupCommandAbbrs('Gd', 'Gdiff')
call SetupCommandAbbrs('Gt', 'GdiffThis')
call SetupCommandAbbrs('Gs', 'Gedit')
call SetupCommandAbbrs('Gc', 'GcommitCurrent')
call SetupCommandAbbrs('Gci', 'Gcommit -v')
call SetupCommandAbbrs('Gca', 'Gcommit -a -v')
call SetupCommandAbbrs('Gco', 'Gcheckout')
call SetupCommandAbbrs('Grm', 'Gremove')
call SetupCommandAbbrs('Gmv', 'Gmove')
call SetupCommandAbbrs('Gp', 'Gpush')
call SetupCommandAbbrs('U', 'Update')
call SetupCommandAbbrs('P', 'Publish')
call SetupCommandAbbrs('N', 'Note')
call SetupCommandAbbrs('T', 'tabe')
call SetupCommandAbbrs('R', 'Reset')
call SetupCommandAbbrs('H', 'ModuleHelp')

" vim: set sw=2 ts=2 sts=2 et tw=78;
