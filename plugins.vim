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
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug '907th/vim-auto-save'
call plug#end()


" Coc.nvim settings
let g:coc_global_extensions = ['coc-java', 'coc-flutter', 'coc-clangd', 'coc-sh']

" Set coc.nvim preferences
let g:coc_preferences = {
      \ 'suggest': {
      \   'autoTrigger': 'always',
      \   'autoImport': v:true,
      \   'sources': ['coc-java', 'coc-flutter', 'coc-clangd', 'coc-sh']
      \ }
      \ }
let g:coc_java_home = '/path/to/jdk'
let g:coc_java_workspace_format = 'Apache NetBeans'
let g:coc_snippet_next = '<tab>'

" Map NERDTree toggle to Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Configure ALE linters for Java
let g:ale_linters = {
            \ 'java': ['javac', 'gradle'],
            \}
let g:auto_save = 1
let g:auto_save_delay = 5


