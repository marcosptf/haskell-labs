-- como criar um modulo no haskell e carrega ele para ultiliza-lo
-- primeiro agente cria um arquivo, e o nome dele sera o nome do modulo
-- depois de criado e estando no mesmo diretorio, sh eh carrega-lo usando
-- comando : + a letra L minuscula ===> :l <nome-modulo>
-- apos isto somente usar as functions lah declaradas
[marcosptf@fedora haskell-labs]$ cat baby.hs
doubleMe x = x + x
[marcosptf@fedora haskell-labs]$
[marcosptf@fedora haskell-labs]$ ghci
GHCi, version 8.10.5: https://www.haskell.org/ghc/  :? for help
Prelude> :l baby
[1 of 1] Compiling Main             ( baby.hs, interpreted )
Ok, one module loaded.
*Main>
*Main> doubleMe 7
14
*Main>
*Main>
