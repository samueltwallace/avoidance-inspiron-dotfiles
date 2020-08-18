let mapleader=" "

" Leader Commands
	nnoremap <Leader>b <c-g>u<Esc>[s1z=`]a<c-g>u 
	nnoremap <Leader>cp \llc 
	nnoremap <Leader>df <Plug>(coc-definition) 
	nnoremap <Leader>fi :FZF<cr> 
	nnoremap <Leader>gi :G<cr> 
	nnoremap <Leader>li :Lines<cr> 
	nnoremap <Leader>rg :Rg<cr> 
	nnoremap <Leader>sp :split<cr>:FZF<cr> 
	nnoremap <Leader>vs :vs<cr>:FZF<cr> 
	nnoremap <Leader>zc ggVGzC'' 
	nnoremap <Leader>zo ggVGzO'' 

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
