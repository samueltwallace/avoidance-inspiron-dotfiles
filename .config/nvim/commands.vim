let mapleader=" "

" Leader Commands
	nnoremap <Leader>b <c-g>u<Esc>[s1z=`]a<c-g>u "Fix last spelling error
	nnoremap <Leader>cp \llc " compile latex
	nnoremap <Leader>df <Plug>(coc-definition) " Jump to coc-definition
	nnoremap <Leader>fi :FZF<cr> " open fuzzy-find file list
	nnoremap <Leader>gi :G<cr> " Open git status
	nnoremap <Leader>li :Lines<cr> "fuzzy find lines
	nnoremap <Leader>rg :Rg<cr> " Ripgrep files in pwd
	nnoremap <Leader>sp :split<cr>:FZF<cr> " split horizontally opening a fuzzy file finder
	nnoremap <Leader>vs :vs<cr>:FZF<cr> " vertically split opening a fuzzy file finder
	nnoremap <Leader>zc ggVGzC'' " Close all folds
	nnoremap <Leader>zo ggVGzO'' " Open all folds

"Window Resizing and Moving
	nnoremap <C-l> <C-W>l
	nnoremap <C-h> <C-W>h
	nnoremap <C-j> <C-W>j
	nnoremap <C-k> <C-W>k
	nnoremap <M-l> <C-W>>
	nnoremap <M-k> <C-W>-
	nnoremap <M-j> <C-W>+
	nnoremap <M-h> <C-W><


inoremap <silent><expr> <C-Space> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<Space>"

command -nargs=0 Refresh :source $HOME/.config/nvim/init.vim
