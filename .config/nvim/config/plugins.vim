" ==========================================================
" airline
" ==========================================================

let g:airline_powerline_fonts=1
let g:airline_theme="gruvbox"
let g:airline#extensions#tabline#enabled=1

" ==========================================================
" devicons
" ==========================================================

let g:webdevicons_enable_airline_statusline=0

" ==========================================================
" indentLine
" ==========================================================

let g:indentLine_showFirstIndentLevel=1
let g:indentLine_fileTypeExclude=['org', 'calendar']

" ==========================================================
" FZF
" ==========================================================

let $FZF_DEFAULT_OPTS='--height 50% --reverse --prompt=\ ' .
\ ' --bind ctrl-a:select-all --bind ctrl-d:deselect-all'

function! s:fzf_statusline()
	highlight default fzf1 gui=bold guifg=#282828 guibg=#458588
	highlight default fzf2 guifg=#458588 guibg=#504945
	highlight default fzf3 guifg=#504945 guibg=#3c3836
	highlight default fzf4 guifg=#ebdbb2 guibg=#3c3836
	setlocal statusline=%#fzf1#\ FZF\ %#fzf2#%#fzf3#%#fzf4#
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" ==========================================================
" gitgutter
" ==========================================================

" Disable by default (ugly)
let g:gitgutter_enabled=0

" Update more quickly
set updatetime=500

" ==========================================================
" NERDTree
" ==========================================================

" Quit NERDTree after opening file
let NERDTreeQuitOnOpen=1

" Some options: 
let g:NERDTreeDirArrowExpandable=''
let g:NERDTreeDirArrowCollapsible=''

" Minimal UI
let g:NERDTreeMinimalUI=1

" ==========================================================
" lengthmatters
" ==========================================================

let g:lengthmatters_excluded=[
	\ 'unite',
	\ 'tagbar',
	\ 'startify',
	\ 'gundo',
	\ 'vimshell',
	\ 'w3m',
	\ 'nerdtree',
	\ 'help',
	\ 'qf',
	\ 'dirvish',
	\ 'far_vim',
	\ 'json'
	\ ]

let g:lengthmatters_on_by_default=0

" ==========================================================
" anzu
" ==========================================================

let g:airline#extensions#anzu#enabled=0

" ==========================================================
" ALE
" ==========================================================

let g:ale_fixers={}
let g:ale_fixers['php']=['php_cs_fixer']
let g:ale_fixers['javascript']=['prettier', 'eslint']
let g:ale_fixers['python']=['autopep8', 'yapf']

" ==========================================================
" matchup
" ==========================================================

let g:matchup_matchparen_status_offscreen=0

" ==========================================================
" closetag
" ==========================================================

let g:closetag_filenames='*.html,*.xhtml,*.phtml,*.php'

" ==========================================================
" markdown
" ==========================================================

let g:vim_markdown_new_list_item_indent=2

" ==========================================================
" orgmode
" ==========================================================

let g:org_indent=1

" ==========================================================
" calendar
" ==========================================================

let g:calendar_google_calendar=1
let g:calendar_google_task=1
let g:calendar_task_delete=1

" ==========================================================
" better-whitespace
" ==========================================================

" Tabs are required for votl. Because for some reason this causes certain
" scenarios in insert mode to leave trailing whitespace, I think it's nicer to
" just disable the ugly red highlights and automatically strip the trailing
" whitespace when the file is saved. The latter is handled with ftplugin
let g:better_whitespace_filetypes_blacklist=['votl']

" ==========================================================
" searchant
" ==========================================================

let g:searchant_map_stop=0
let g:searchant_all=1

highlight Search cterm=reverse ctermfg=208 ctermbg=235 gui=reverse guifg=#fe8019 guibg=#282828
highlight SearchCurrent cterm=reverse ctermfg=214 ctermbg=235 gui=reverse,bold,underline guifg=#fabd2f guibg=#282828
