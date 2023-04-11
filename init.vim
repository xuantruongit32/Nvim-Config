source ~/.config/nvim/plugins.vim
colorscheme dracula
doautocmd User PlugLoaded
abbr sysout  System.out.println(
abbr psvm public static void main(
abbr Scanner Scanner = new Scanner(System.in
abbr iscanner import java.util.Scanner;
syntax on
filetype plugin on
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nmap <silent> <Leader>fa :CocCommand flutter.run<CR>
inoremap _for for(;;)<ESC>i
inoremap _include #include<bits/stdc++.h><CR>using namespace std;<CR><CR>int main (){<CR>}<ESC>O
vnoremap _cmt :s/^/\/\/<CR>:nohl<CR>
vnoremap _uncmt :s/^\/\///<CR>:nohl<CR>
vnoremap _tab :normal I<Tab><CR>
vnoremap _untab :s/^\s\+//g \| nohlsearch<CR>
vnoremap _fold :set foldmethod=indent
set guifont=Fira\ Code:h12
"Extended settings
let nvim_settings_dir = '~/.config/nvim/'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'terminal.vim'
execute 'source '.nvim_settings_dir.'coc.vim'
execute 'source '.nvim_settings_dir.'map.vim'



