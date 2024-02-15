" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')
Plug 'dart-lang/dart-vim-plugin'
Plug 'Mofiqul/dracula.nvim'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
" File browser
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug '907th/vim-auto-save'
Plug 'w0rp/ale'


call plug#end()

" Coc.nvim settings
let g:coc_global_extensions = ['coc-flutter', 'coc-clangd', 'coc-sh']

let g:auto_save = 1
let g:auto_save_delay = 5


