-- curso haskell no livro ou no site
-- http://learnyouahaskell.com/starting-out

[marcosptf@fedora NetBeansProjects]$ sudo dnf install ghc -y

[marcosptf@fedora NetBeansProjects]$
[marcosptf@fedora NetBeansProjects]$ cd haskell-labs/
[marcosptf@fedora haskell-labs]$ ghci
GHCi, version 8.10.5: https://www.haskell.org/ghc/  :? for help
Prelude> :1 Teste.hs
unknown command ':1'
use :? for help.
Prelude>
Prelude> :1 Teste.hs
unknown command ':1'
use :? for help.
Prelude>
Prelude> module Teste where
Prelude> :1 Teste
unknown command ':1'
use :? for help.
Prelude>
Prelude> :r
Ok, no modules loaded.
Prelude>
Prelude> 2+2
4
Prelude> 3<4
True
Prelude> "ola " ++ "mundo"
"ola mundo"
Prelude>
Prelude> :t True
True :: Bool
Prelude>
Prelude>
Prelude> #comentario do hs

<interactive>:17:1: error: parse error on input ‘#’
Prelude>
Prelude> -- comentario do hs
Prelude>
Prelude> // comentario do sh

<interactive>:21:1: error: parse error on input ‘//’
Prelude>
Prelude> /* comentario hs */

<interactive>:23:1: error: parse error on input ‘/*’
Prelude>
Prelude>

[marcosptf@fedora ~]$ ghci
GHCi, version 8.10.5: https://www.haskell.org/ghc/  :? for help
Prelude> 2 +15
17
Prelude> 49 * 100
4900
Prelude> 1892 - 1472
420
Prelude>
Prelude> 5 / 2
2.5
Prelude> (50 * 100) - 4999
1
Prelude> 50 * 100 - 4999
1
Prelude> 50 * (100 - 4999)
-244950
Prelude> True && False
False
Prelude> True && True
True
Prelude>
Prelude> False || True
True
Prelude> not False
True
Prelude> False
False
Prelude> not (True && False)
True
Prelude> 5 == 5
True
Prelude> 1 == 0
False
Prelude> 5 /= 5
False
Prelude> 5 /= 4
True
Prelude> "hello" == "hello"
True
Prelude>


-- trabalhando com listas no haskell
Prelude> :t [True, False, True]
[True, False, True] :: [Bool]
Prelude>
Prelude> [1,2] ++ [3,4]
[1,2,3,4]
Prelude>
Prelude> (++) [1,2] [3,4]
[1,2,3,4]
Prelude>
Prelude> [1,2] ++ []
[1,2]
Prelude>
Prelude> [] ++ [1,2]
[1,2]
Prelude> [True, False] ++ [True]
[True,False,True]
Prelude>
Prelude> "ABCD" ++ "EFG"
"ABCDEFG"

