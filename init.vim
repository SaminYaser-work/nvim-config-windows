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

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

" LSP Stuff
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
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
Plug 'SirVer/ultisnips'
Plug 'phaazon/hop.nvim'
Plug 'tweekmonster/startuptime.vim'
Plug 'junegunn/vim-easy-align'
Plug 'windwp/nvim-autopairs'
" Plug 'famiu/feline.nvim'
Plug 'akinsho/bufferline.nvim'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""" Sourcing My Configs """""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovide
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_refresh_rate=144
set guifont=JetBrainsMono\ NF:h16

" Basic stuff
source ./myConfigs/settings.vim
" source ~/.config/nvim/myConfigs/themes.vim
source ./myConfigs/remaps.vim
source ./myConfigs/autocmds.vim

" Plugin configs
lua << EOF
require('theme')
-- require('lsp')
-- require('treesitter')
require('completion')
require('nvim-colorizer')
require('_nvim-autopairs')
require('_bufferline')
-- require('compe-words')
EOF


" source ./myConfigs/lspconfig.vim
source ./myConfigs/vimling.vim
source ./myConfigs/vimwiki.vim
source ./myConfigs/airline.vim
source ./myConfigs/digraps_alphabets.vim
source ./myConfigs/startify-settings.vim
source ./myConfigs/signify.vim
source ./myConfigs/quickscope.vim
source ./myConfigs/hop.vim
source ./myConfigs/neoformatter.vim

" Unused stuff
" source ~/.config/nvim/myConfigs/polyglot.vim
" source ~/.config/nvim/myConfigs/coc-stuff.vim
" source ~/.config/nvim/myConfigs/fzf-rg.vim
" source ~/.config/nvim/myConfigs/coc-explorer.vim


" Unbinding tab from UltiSnip because it interferes with coc autocompletion
    let g:UltiSnipsExpandTrigger="<A-'>"
    " let g:UltiSnipsJumpForwardTrigger="<A-'>"
    " let g:UltiSnipsJumpBackwardTrigger="<A-'>"
