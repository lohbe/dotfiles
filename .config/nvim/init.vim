call plug#begin()
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua require'lspconfig'.bashls.setup{}
