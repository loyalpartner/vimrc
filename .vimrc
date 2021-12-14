let g:local = expand('~/vim-dev/')
set runtimepath^=~/vim-dev/plug.nvim
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-stylelint'
"Plug 'evanleck/vim-svelte'
Plug 'neoclide/mycomment.vim'
"Plug 'neoclide/vim-jsx-improve'
"Plug 'yuezk/vim-js'
Plug 'neoclide/macdown.vim'
Plug 'neoclide/macnote.vim'
"Plug 'voldikss/vim-floaterm'
Plug 'chemzqm/vim-macos'
Plug 'chemzqm/vim-run'
Plug 'chemzqm/wxapp.vim'
Plug 'chemzqm/jsonc.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'lambdatoast/elm.vim'
"Plug 'chemzqm/coc-task'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'dhruvasagar/vim-zoom'
Plug 'tpope/vim-rhubarb'
Plug 'romainl/vim-cool' " search improve
Plug 'mbbill/undotree'
Plug 'rizzatti/dash.vim'
Plug 'mattn/emmet-vim'
Plug 'whiteinge/diffconflicts'
Plug 'tommcdo/vim-exchange'
Plug 'dag/vim-fish'
Plug 'fatih/vim-go'
Plug 'heavenshell/vim-jsdoc', { 'do': 'make install' }
"Plug 'elzr/vim-json'
Plug 'othree/xml.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tommcdo/vim-lion'
Plug 'keith/swift.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Yggdroot/indentLine'
Plug 'mzlogin/vim-markdown-toc'
Plug 'posva/vim-vue'
Plug 'dart-lang/dart-vim-plugin'
Plug 'tweekmonster/helpful.vim'
Plug 'lervag/vimtex'
Plug 'derekwyatt/vim-scala'
Plug 'simnalamburt/vim-mundo'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'lambdalisue/gina.vim'
Plug '907th/vim-auto-save'
Plug 'chromium/vim-codesearch'
Plug 'puremourning/vimspector'
Plug 'loyalpartner/chromium-vim', { 'do': 'rm -rf ./plugin'}
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'hari-rangarajan/CCTree'
Plug 'preservim/tagbar'
Plug 'liuchengxu/vista.vim'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/gtags.vim'
Plug 'morhetz/gruvbox'
Plug 'heavenshell/vim-pydocstring'
Plug 'vim-utils/vim-man'
Plug 'kshenoy/vim-signature'

"Plug 'dradtke/vim-dap'
"Plug 'mhinz/vim-startify'
"Plug 'w0rp/ale', {'branch': 'me'}
"Plug 'Shougo/neco-vim'
"Plug 'garbas/vim-snipmate'
"Plug 'scrooloose/nerdtree'
"Plug 'jparise/vim-graphql'
"Plug 'neoclide/todoapp.vim', {'dir': g:local, 'frozen': 1}
"Plug 'liuchengxu/vista.vim'
"Plug 'easymotion/vim-easymotion'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-projectionist'
"Plug 'itchyny/lightline.vim'
"Plug 'machakann/vim-highlightedyank'
"Plug 'neoclide/denite-git', {'dir': g:local, 'frozen': 1}
"Plug 'Shougo/denite.nvim', {'branch': 'me'}
"Plug 'neoclide/denite-extra', {'dir': g:local, 'frozen': 1}
"Plug 'Shougo/echodoc'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'mitsuse/autocomplete-swift'
"Plug 'wellle/targets.vim'
call plug#end()
filetype plugin on
syntax on

" vimrc files
for s:path in split(glob('~/.vim/vimrc/*.vim'), "\n")
  exe 'source ' . s:path
endfor
