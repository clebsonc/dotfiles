Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews

" toggle search for file names with leader+f
nnoremap <silent> <leader>f :Files<CR>

" toggle search for words inside files with leader+j
nnoremap <silent> <leader>j :Rg<CR>

" toggle search for Buffers with leader+b
nnoremap <silent> <leader>b :Buffers<CR>

