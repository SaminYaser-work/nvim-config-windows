""""""""""""""""""""""""""""""
""""" Telescope bindings """""
""""""""""""""""""""""""""""""


lua << EOF

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
-- require('telescope').setup {
--   extensions = {
--     fzf = {
--       fuzzy = true,                    -- false will only do exact matching
--       override_generic_sorter = true,  -- override the generic sorter
--       override_file_sorter = true,     -- override the file sorter
--       case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
--                                        -- the default case_mode is "smart_case"
--     }
--   }
-- }

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzf')

EOF

" Builtin functions
nnoremap <space>e <cmd>lua require'telescope.builtin'.builtin{}<CR>

" most recently used files
nnoremap <space>rf <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" ripgrep like grep through dir
nnoremap <space>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" Registers
nnoremap <space>rr <cmd>lua require'telescope.builtin'.registers{}<CR>

" find buffer
nnoremap <space><Tab> <cmd>lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <space>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <space>' <cmd>lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <space>gf <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <space>f <cmd>lua require'telescope.builtin'.find_files{}<CR>

" pick color scheme
nnoremap <space>c <cmd>lua require'telescope.builtin'.colorscheme{}<CR>

" Pick man pages
nnoremap <space>m <cmd>lua require'telescope.builtin'.man_pages{}<CR>

" Spell suggestion
nnoremap <space>z <cmd>lua require'telescope.builtin'.spell_suggest{}<CR>
