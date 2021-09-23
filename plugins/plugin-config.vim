"------------------- Conquer of Completion source -------------
source ~/configs/plugins/coc-configs.vim
"------------------- Conquer of Completion source -------------

"------------------- Startify ---------------------------------
let g:startify_custom_header = [
      \'                               .__',        
      \'  ____    ____    ____  ___  __|__|  _____   ', 
      \' /    \ _/ __ \  /  _ \ \  \/ /|  | /     \  ', 
      \'|   |  \\  ___/ (  <_> ) \   / |  ||  Y Y  \  ', 
      \'|___|  / \___  > \____/   \_/  |__||__|_|  /   ',
      \'     \/      \/                          \/    ', 
  \ ]
"------------------- Startify ---------------------------------

"------------------- NERDTree ---------------------------------
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let s:git_orange = 'F54D27'
let s:green='8FAA54'
let s:yellow='f7d307'
let g:NERDTreeExactMatchHighlightColor = {} 
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeHighlightFolders = 0 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 0 " highlights the folder name
" let g:NERDTreeDisableFileExtensionHighlight = 1
" let g:NERDTreeDisableExactMatchHighlight = 1
" let g:NERDTreeDisablePatternMatchHighlight = 1
"------------------- NERDTree ---------------------------------

"------------------- Devicons  -------------------------------
" Devicons Uncomment to enable icons
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack.config.js'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['webpack.prod.js'] = ''
"------------------- Devicons  -------------------------------

" Clear syntax highlighting to prevent lag
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"------------------- LightLine ---------------------------------
let g:lightline = {
      \'active': {
      \   'left': [ [ 'mode'],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ }
"------------------- LightLine ---------------------------------


"------------------- MAPS --------------------------------------
" Leader
let mapleader=" "

" Easymotion 
nmap <Leader>s <Plug>(easymotion-s2)

" Write changes with leader and w
nmap <Leader>w :w<CR>

" Quit buffer with leader and q
nmap <Leader>q :q<CR>
"------------------- MAPS --------------------------------------

"------------------- AutoCloseTags </> -------------------------------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = "*.html,*.jsx,*.js,*.tsx,*.vue,*.xhml,*.xml"

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
"------------------- AutoCloseTags </> ----------------------------------

"------------------- Ident Lines for JSON -------------------------------
let g:vim_json_syntax_conceal=0
"------------------- Ident Lines for JSON -------------------------------
