let g:which_key_map['k']    = [ ':bdelet',             'Kill Buffer']
let g:which_key_map['b']    = [ ':Buffers',           'Buffers']
let g:which_key_map['s']    = [ ':CocList -I symbols', 'Symbols']
let g:which_key_map['g']    = [ ':Rg!',                'Rg']
let g:which_key_map['f']    = [ ':FZF',                'Files']
let g:which_key_map['y']    = [ ':CocList -A --normal yank',                'Yanks']

nmap // :BLines!<CR>
nmap ?? :Lines!!<CR>
noremap <A-f> :Neoformat<CR>

