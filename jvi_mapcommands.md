" {W} -> [É]
 " ——————————
"LD pour <E>nregistrer & laisser en mode normal
inoremap <C-e>  <Esc>:w<CR>
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire, pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
" (attention, cela diminue la réactivité du {A}…)
noremap aé aw
noremap aÉ aW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" Pour un début de ligne à la place de 0
"noremap è ^
"noremap È 0

" edit laurent pour è=fin de ligne et $=début de ligne
noremap è $
noremap $ 0



 " pour n remapé en à, pour recherche   
 noremap à n
 noremap À N
 
" [HJKL] -> {CTSR} edit Laurent : nan, jklm donc en bépo TSRN
" ————————————————
" {cr} (tn) = « gauche / droite »
noremap t h
noremap n l
" {ts} (sr) = « haut / bas »
noremap s j
noremap r k
" {CR} (TN) = « haut / bas de l'écran »
noremap T H
noremap N L
" {TS} (SR) = « joindre / aide »
noremap S J
noremap R K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk
 
" {HJKL} <- [CTSR] (TSRN)
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j s
noremap J S
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l t
noremap L T
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h n
noremap H N
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k r
noremap K R
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

"edit Laurent pour fonctionnalité de CTRL-R par U (majuscule)
noremap U <C-r>

"edit Laurent pour navigation avec jklm (tsrn en bépo) entre différents panneaux (viewports :vsp et :sp)
"map <C-T> <C-W>t<C-W>_ (ne marche pas)
"map <C-N> <C-W>n<C-W>_ (idem)
noremap <C-n> <C-W><Right>
noremap <C-t> <C-W><Left>
noremap <C-s> <C-W><Down>
noremap <C-r> <C-W><Up>
 