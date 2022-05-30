" Setting leader key
let mapleader =","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" My Plugins """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
" 	echo "Downloading junegunn/vim-plug to manage plugins..."
" 	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
" 	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
" 	autocmd VimEnter * PlugInstall
" endif


" call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
call plug#begin('C:\Users\samin\AppData\Local\nvim\autoload\plugged')

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

" LSP Setup
Plug 'VonHeikemen/lsp-zero.nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Plug 'neovim/nvim-lspconfig'
" Plug 'kabouzeid/nvim-lspinstall'
" Plug 'glepnir/lspsaga.nvim'
" Plug 'hrsh7th/nvim-compe'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-surround'
Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-commentary'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-rooter'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sbdchd/neoformat'
Plug 'rhysd/vim-grammarous'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
" Plug 'thanthese/Tortoise-Typing'
Plug 'unblevable/quick-scope'
Plug 'skywind3000/asyncrun.vim'
" Plug 'SirVer/ultisnips'
" Plug 'phaazon/hop.nvim'
Plug 'tweekmonster/startuptime.vim'
Plug 'junegunn/vim-easy-align'
" Plug 'windwp/nvim-autopairs'
" Plug 'famiu/feline.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'drzel/vim-gui-zoom'
Plug 'kdheepak/lazygit.nvim'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""" Sourcing My Configs """""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovide
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_refresh_rate=144
set guifont=JetBrainsMono\ NF:h16
nmap <leader>= :ZoomIn<CR>
nmap <leader>- :ZoomOut<CR>


" LSP Setup
lua <<EOF
require('nvim-treesitter.install').compilers = { "clang" }
vim.opt.signcolumn = 'yes'
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
EOF

" Basic stuff
source C:/users/samin/AppData/Local/nvim/myConfigs/settings.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/themes.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/remaps.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/autocmds.vim

" Plugin configs
lua << EOF

-- require('theme')
-- require('lsp')
require('treesitter')
-- require('completion')
require('nvim-colorizer')
-- require('_nvim-autopairs')
require('_bufferline')
-- require('compe-words')

EOF


" source C:/users/samin/AppData/Local/nvim/myConfigs/lspconfig.vim
source C:/users/samin/AppData/Local/nvim/lua/telescope-conf.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/vimling.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/vimwiki.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/airline.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/digraps_alphabets.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/startify-settings.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/signify.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/quickscope.vim
" source C:/users/samin/AppData/Local/nvim/myConfigs/hop.vim
source C:/users/samin/AppData/Local/nvim/myConfigs/neoformatter.vim

" Unused stuff
" source ~/.config/nvim/myConfigs/polyglot.vim
" source ~/.config/nvim/myConfigs/coc-stuff.vim
" source ~/.config/nvim/myConfigs/fzf-rg.vim
" source ~/.config/nvim/myConfigs/coc-explorer.vim


" Unbinding tab from UltiSnip because it interferes with coc autocompletion
    let g:UltiSnipsExpandTrigger="<A-'>"
    " let g:UltiSnipsJumpForwardTrigger="<A-'>"
    " let g:UltiSnipsJumpBackwardTrigger="<A-'>"
