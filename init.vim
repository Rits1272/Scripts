set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set ttyfast " Speed up scrolling in Vim
set hlsearch
set shiftwidth=2
set backupcopy=yes

hi Search ctermbg=LightYellow
hi Search ctermfg=Green
set termguicolors

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'epmatsw/ag.vim'
  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-fugitive'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'm4xshen/autoclose.nvim'
  Plug 'Mofiqul/vscode.nvim'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-commentary'
  Plug 'pangloss/vim-javascript'
  Plug 'mhartington/oceanic-next'
call plug#end()

let mapleader=' ' " leader key

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>a <cmd>Telescope git_branches<cr>
nnoremap <leader>h <cmd>Telescope oldfiles<cr>
nnoremap <leader>s <cmd>Telescope search_history<cr>
nnoremap <leader>t <cmd>Telescope treesitter<cr>
nnoremap <leader>r <cmd>Telescope command_history<cr>
nnoremap <leader>c <cmd>Telescope resume<cr>
nnoremap <leader>b :execute "Shell git blame -L " . eval(line(".")-5) . ",+10 %"<cr>


" TAB key binding for auto-complete in coc.nvim
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

colorscheme slate 

