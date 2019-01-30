" ==========================================================
" Init
" ==========================================================

" Leader
let mapleader=" "

" ==========================================================
" Lines
" ==========================================================

" Toggle breaking words on linebreaks
nnoremap <leader>wb :set linebreak!<CR>
nnoremap <leader>wr :set wrap!<CR>
nnoremap <leader>wl :LengthmattersToggle<CR>
nnoremap <leader>wt8 :set textwidth=80<CR>
nnoremap <leader>wt0 :set textwidth=0<CR>

" ==========================================================
" Movement
" ==========================================================

" Move vertically by screen line
nnoremap j gj
nnoremap k gk
" vnoremap j gj
" vnoremap k gk
xnoremap <expr> j mode() ==# 'V' ? 'j' : 'gj'
xnoremap <expr> k mode() ==# 'V' ? 'k' : 'gk'

" Move to beginning/end of line
nnoremap E $
nnoremap B ^
onoremap E $
onoremap B ^
vnoremap E $
vnoremap B ^

" WORD motions
nnoremap $ E
nnoremap ^ B
onoremap $ E
onoremap ^ B
xnoremap $ E
xnoremap ^ B

" Enable mouse
set mouse=a

" ==========================================================
" Editing
" ==========================================================

nnoremap <leader>d "_d
xnoremap <leader>d "_d

" ==========================================================
" Insert mode shortcuts
" ==========================================================

" jk is faster than <ESC>
inoremap jk <ESC>

inoremap <C-U> <C-G>u<C-U>

" ==========================================================
" Buffers
" ==========================================================

nnoremap <silent> <BS> <C-^>

" Delete a buffer without closing the window
nnoremap <silent> <leader>q :bprevious<bar>split<bar>bnext<bar>bdelete<CR>

nnoremap <silent> - :bnext<CR>
nnoremap <silent> _ :bprevious<CR>

" ==========================================================
" Indentation
" ==========================================================

nnoremap <leader>ie :set tabstop? shiftwidth? expandtab?<CR>
nnoremap <leader>it4 :set tabstop=4 shiftwidth=4 noexpandtab<CR>
nnoremap <leader>it2 :set tabstop=2 shiftwidth=2 noexpandtab<CR>:IndentLinesReset<CR>
nnoremap <leader>is4 :set tabstop=4 shiftwidth=4 expandtab<CR>:IndentLinesReset<CR>
nnoremap <leader>is2 :set tabstop=2 shiftwidth=2 expandtab<CR>:IndentLinesReset<CR>

nnoremap <leader>ir :IndentLinesReset<CR>

" ==========================================================
" HTML indentation
" ==========================================================

function! Expander()
	let line   = getline(".")
	let col    = col(".")
	let first  = line[col-2]
	let second = line[col-1]
	let third  = line[col]
	if first ==# ">"
		if second ==# "<" && third ==# "/"
			return "\<CR>\<C-o>==\<C-o>O"
		else
			return "\<CR>"
		endif
	else
		return "\<CR>"
	endif
endfunction

" Insert new indented line after tag
inoremap <expr> <CR> Expander()

" ==========================================================
" FZF
" ==========================================================

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <leader>/ :Ag<space>

nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>

nnoremap <silent> <leader>zm :Maps<CR>
nnoremap <silent> <leader>zf :Filetypes<CR>

" ==========================================================
" Gundo
" ==========================================================

nnoremap <leader>u :GundoToggle<CR>

" ==========================================================
" easy-align
" ==========================================================

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ==========================================================
" gitgutter
" ==========================================================

nnoremap <leader>ht :GitGutterToggle<CR>

" ==========================================================
" NERDTree
" ==========================================================

nnoremap <leader>no :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>

" ==========================================================
" anzu, asterisk, searchant
" ==========================================================

" Since the default block cursor inverts the BG and FG colors, use something
" more subtle so that the cursor doesn't cover up the currently highlighted
" search result
function s:SearchCursorOn()
	set guicursor=v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,n:hor50
endfunction

" This is from `Stop` function in searchant. For some reason, if I use
" `<Plug>SearchantStop` before the mapping, it doesn't work. So now I just
" have some duplicate code
function s:ClearSearchant()
	if exists("w:current_match_id")
		call matchdelete(w:current_match_id)
		unlet w:current_match_id
	endif
endfunction

function s:SearchCursorOff()
	set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
endfunction

nnoremap / :call <SID>ClearSearchant()<CR>:call <SID>SearchCursorOn()<CR>/
map n  <Plug>(anzu-n-with-echo)
map N  <Plug>(anzu-N-with-echo)
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)

nmap <silent> <C-L>
	\ <Plug>SearchantStop
	\ :nohlsearch<CR>
	\ :call <SID>SearchCursorOff()<CR>

" ==========================================================
" incsearch-fuzzy
" ==========================================================

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" ==========================================================
" UltiSnips
" ==========================================================

let g:UltiSnipsExpandTrigger="<C-a>"
let g:UltiSnipsListSnippets="<C-A-a>"

" ==========================================================
" ALE
" ==========================================================

nnoremap <leader>co :ALEToggle<CR>
nnoremap <leader>cf :ALEFix<CR>
nnoremap <leader>cd :ALEDetail<CR>
nnoremap <leader>cj :ALENextWrap<CR>
nnoremap <leader>ck :ALEPreviousWrap<CR>
nnoremap <leader>cc :ALELint<CR>

" ==========================================================
" emmet
" ==========================================================

let g:user_emmet_leader_key = '<F2>'

" ==========================================================
" Maximizer
" ==========================================================

nnoremap <leader>mo :MaximizerToggle<CR>

" ==========================================================
" goyo
" ==========================================================

nnoremap <leader>0 :Goyo<CR>

" ==========================================================
" Clipboard
" ==========================================================

" Copy '{{ full path }}/{{ file }}'to clipboard
nnoremap yf :let @+ = expand("%:p")<CR>
" Copy '{{ full path }}' to clipboard
nnoremap yd :let @+ = expand("%:p:h")<CR>

" ==========================================================
" Folding
" ==========================================================

nnoremap <leader>fe :set foldmethod?<CR>
nnoremap <leader>fm :set foldmethod=manual<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>
nnoremap <leader>fk :set foldmethod=marker<CR>

" ==========================================================
" Other
" ==========================================================

" Highlight last inserted text
nnoremap gV `[v`]

" Spellchecking
nnoremap <silent> <leader>* :set spell!<CR>

" Search and replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
