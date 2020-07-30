" dein
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein') 
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('joshdick/onedark.vim') 
  call dein#add('chr4/nginx.vim')
  call dein#add('jremmen/vim-ripgrep')
  call dein#add('dag/vim-fish')
  call dein#add('godlygeek/tabular')
  call dein#add('tpope/vim-surround')
  call dein#add('lervag/vimtex')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

let mapleader=" "
let maplocalleader="\<space>"

" file management
set path+=**
set wildmenu "tab completion menu
set wildignore+=**/node_modules/**
set hidden " allow switching buffers without saving 
 


" misc
filetype plugin indent on
syntax enable

" disable comments
au BufEnter * set fo-=cro 

" save folding
autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

"searching
set ic "case-insensitive search
set hlsearch

" mouse/clipboard
set mouse=a " 'a'll mouse support
set clipboard=unnamed "global clipboard

" wrapping words
set wrap 
set linebreak "wraps do not split mid-word

" tabs
set tabstop=2 "use 2 spaces"
set shiftwidth=2
set bs=2 "backspace 2
set expandtab "use spaces when press tab
set number relativenumber "hybrid numbers

" better visuals
set termguicolors "enables multiple colors
colorscheme onedark
set scrolloff=5 "5 line buffer

"save when hit F2 <CR>
noremap <F2> :update<CR>
vnoremap <F2> <C-C>:update<CR>
inoremap <F2> <C-O>:update<CR>

" platform specific
if has("unix")
  let s:uname = substitute(system("uname"), '\n', '', '')
  if s:uname == "Darwin"
    let g:vimtex_view_method = "skim"
    let g:vimtex_view_general_viewer
                \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
  endif
endif

"templates
autocmd BufNewFile *.latex 0r $HOME/.config/nvim/templates/skeleton.latex "latex skeleton file
autocmd BufNewFile *.fish 0r $HOME/.config/nvim/templates/skeleton.fish "fish skeleton file

"spell check
map <F5> :source ~/.config/nvim/init.vim<CR>
map <F6> :setlocal spell! spelllang=en_us<CR> 

" latex
" shortcuts
autocmd FileType tex map <Leader>cl A\\<Esc>j0 
autocmd FileType tex map <Leader>it I\item 
" autocmd FileType tex inoremap \tit \textit{
" autocmd FileType tex inoremap \tx \text{
" autocmd FileType tex inoremap \it \item 
" autocmd FileType tex inoremap \tbf \textbf{
" autocmd FileType tex inoremap \ttt \texttt{
" options
let g:surround_{char2nr('c')} = "\\\1command\1{\r}" "latex work with vim-surround
let g:vimtex_quickfix_autojump = 1 "auto jump to errors
let g:tex_flavor = 'latex' "prevent vim detecting .tex files as plaintex.
let g:deoplete#enable_at_startup = 1
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown let b:deoplete_disable_auto_complete = 1
autocmd BufWritePost *.md silent !mdpdf %
" save last cursor position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"neoplete use TAB
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 


nmap <Leader>t :set termguicolors!<CR>
nmap ci, T,ct,
map <Leader>k kA
nmap <leader>f :Rg  
nmap <Leader>n :cnext<CR>
nmap <Leader>p :cprev<CR>
map <Leader>j jA 

" format vagrant as ruby
augroup vagrant 
	au!
	au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END
