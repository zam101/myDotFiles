call plug#begin()
"Plug 'shapeoflambda/dark-purple.vim'
Plug 'sjl/badwolf'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'
Plug 'ackyshake/Spacegray.vim'
Plug 'sickill/vim-monokai'
Plug 'tpope/vim-commentary'
Plug 'juniway/indent-bar'
Plug 'wojciechkepka/vim-github-dark'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'dart-lang/dart-vim-plugin'
Plug 'bluz71/vim-moonfly-colors'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'chemzqm/vim-jsx-improve'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'git@github.com:scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline'
Plug 'ryanoasis/vim-devicons'
"Plug 'NLKNguyen/copy-cut-paste.vim'
call plug#end()

set guifont=Hack\ Nerd\ Font\ 12
set nocompatible
syntax on
set showmatch
set tabstop=2
set smartindent
set shiftwidth=2
set expandtab
filetype on
set nu
set ruler
set mouse=a
set nolist
"set cursorline
set splitright
set splitbelow
set foldmethod=indent
set foldlevel=99
"folding with space
nnoremap <space> za 

"remove highlight with f4 
nnoremap <F4> :nohlsearch<CR>
let mapleader = "," " map leader to comma
set laststatus=2
set noshowmode
set hlsearch
if has('termguicolors')
    set termguicolors
endif
"vertical indent bars
let g:indent_bar_set_colors = 0
let g:indent_bar_char = '┆'
let g:indent_bar_enabled = 0
set background=dark
let gruvbox_contrast_dark='hard'
colorscheme gruvbox
"let g:lightline = {'colorscheme' : 'PaperColor'}
map <silent> <C-t> :NERDTreeToggle<CR>

"nmap <silent>nt :tabnext<CR>
"nmap <silent>pt :tabprevious<CR>

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx, *.ts'

"coc settings 
set encoding=UTF-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
let g:coc_node_args = ['--max-old-space-size=250']
let b:coc_diagnostic_disable = 1 
set shortmess+=c "Don't pass messages to ins-completion-menu

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>


function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"flutter actions 
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

"autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
"autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
"autocmd bufnewfile,bufread *.js set  filetype=javascript.jsx
augroup filetype javascript syntax=javascript

let g:airline_theme='codedark'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#tab_min_count = 2
