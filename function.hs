
-- este trecho para nos que viemos de linguagens nao funcionais significa uma atribuicao
-- porem para o haskell significa uma declaracao, ele ai fica uma function chamada u() sem parametros
Prelude> u = 7
Prelude> u
7
Prelude> u = 4
Prelude> u
4




-- syntaxe de criacao de haskell function
nomeDaFunction p1 p2 p3 ... pN = expressao que depende dos N parametros

-- exemplo de como criar a function no Haskell
-- o nome da function vem primeiro seguido com os parametros
-- logo em seguida "=" vem para definir q ali termina a parte dos parametros
-- logo apor o "=" vem a parte que eh o corpo da function
Prelude> maiorQue x y = x > y
Prelude>
Prelude> maiorQue 1 2
False
Prelude> maiorQue 3 4
False
Prelude> maiorQue 9 4
True
Prelude>


-- functions nativas do haskell
-- function succ mostra qual eh o successor do numero p1
Prelude> succ 8
9
Prelude> succ 9
10
Prelude>
-- function min mostra entre p1 && p2 qual o menor
Prelude> min 1 2
1
Prelude> min 3 7
3

-- function max mostra entre p1 && p2 qual maior
Prelude> max 9 4
9
Prelude> max 4 7
7

Prelude> succ 9 + max 5 4 + 1
16
Prelude> (succ 9 ) + (max 5 4) + 1
16
Prelude>

Prelude>
Prelude> head "ABCDEFG"
'A'
Prelude>
Prelude> last "ABCDEFG"
'G'
Prelude>
Prelude> tail "ABCDEFG"
"BCDEFG"
Prelude>
Prelude> head ""
*** Exception: Prelude.head: empty list
Prelude>
Prelude> last ""
*** Exception: Prelude.last: empty list
Prelude>
Prelude> tail ""
*** Exception: Prelude.tail: empty list
Prelude>
Prelude> reverse "HASKELL"
"LLEKSAH"
Prelude>
Prelude> reverse [1,2,3,4,5,6,7,8,9]
[9,8,7,6,5,4,3,2,1]
Prelude>
Prelude> reverse []
[]
Prelude>
Prelude> (head . reverse) "HASKELL"
'L'
Prelude>
Prelude> last "HASKELL"
'L'
Prelude>


-- a function !! usada de maneira infixa, recebe uma lista e um numero
-- inteiro e devolve o elemento na posicao informada
Prelude> [0,1,2,3,4,5] !! 2
2
Prelude>
Prelude> [1,2,3,4,5] !! 0
1
Prelude>


-- a function cons ":" recebe um elemento e uma lista e recebe este elemento na frnte da lista
Prelude> 3 : [0,1,2,3,4,5,6]
[3,0,1,2,3,4,5,6]
Prelude>
Prelude> 'a' : "bcdefgh"
"abcdefgh"
Prelude>
Prelude> 2 : []
[2]
Prelude>
Prelude> "a" : []
["a"]
Prelude>
Prelude> 3 : [4,5,6,7,8,9]
[3,4,5,6,7,8,9]
Prelude>
Prelude> 3 : 4 :5 : 6 : 7 : 8 : 9 : [10, 11, 12, 13, 14, 15]
[3,4,5,6,7,8,9,10,11,12,13,14,15]
Prelude>
Prelude>

-- function length
Prelude> length [0,1,2,3,4,5]
6
Prelude>
Prelude> length ["a"]
1
Prelude>
Prelude> length "a"
1
Prelude>
Prelude> length []
0
Prelude>


-- list compreension
-- em haskell eh possivel contruir listas de qq tipos usando expressoes
-- q podem ser distribuidas a todos os elementos de um dado vetor usando list compreension
-- a expression eh qq function q podera ser dstribuida nos elementos da lista, representados
-- por var, com os elementos q passen na condicao dos filtros
-- syntaxe geral =>
[expresao(var) | var<-lista, filtro-1, filtro-2, ..., filtro-x]

-- exemplo de implementacao =>
dobroLista :: [Int] -> [Int]
dobroLista xs = [2 * x | x <- xs]

-- esta function possui como parametro a lista de inteiros x e ela devolve uma lista
-- de inteiros contendo o dobro de cada elemento x contido em xs
-- tendo em mente a descricao da function anterior eh possivel enxergar o uso da syntaxe
-- [Int] -> [Int]
-- que representa que a function possui um prametro do tipo lista de inteiros
-- e esta retorna uma lista de inteiros
-- o tipo definido apos a ultima "->" representa o retorno da function
-- no exemplo anterior a expression eh a function 2 * x
-- e alista na qual a function sera distribuida eh xs

-- exemplo 2
-- neste exemplo vemos q a function 2*x+1 se distribuiraa todos os elementos
-- da lista [0 .. 10] com exceção do numero 5 que nao passa no filtro indicad
-- portanto a lista tem como conteudo
[1,3,5,7,9,13,15,17,19,21]
lista :: [Int]
lista = [2 * x + 1 | x<-[0 .. 10], x/=5]


-- tuplas no haskell
-- diferentes das listas as tuplas somente carregam dados de um tipo
-- soh com um numero variavel de elementos, as tuplas carregam diversos
-- tipos so memo tempo e possuem um numero fixo de elementos
-- nao eh possivel usar a function cons ":" nem concatenar "++" nada a elas
-- tuplas sao imutaveis, o numero de elementos em uma tupla eh fixo,
-- e cada local no qual um elemento reside eh chamado de coordenada
Prelude> :t ("a", "alo")
("a", "alo") :: ([Char], [Char])
Prelude>
Prelude>
Prelude> -- exemplo de function usando tupla
Prelude> foo :: Char -> Int -> (Int, String)

<interactive>:102:1: error:
    Variable not in scope: foo :: Char -> Int -> (Int, String)
Prelude>
Prelude> foo x y = (y+9, x:[x])
Prelude>
Prelude> foo "e" 2
(11,["e","e"])
Prelude>
Prelude>

-- function fst projeta a primeira coordenada de uma tupla
Prelude> fst ("a", "alo")
"a"

-- function snd projeta a segunda coordenada de uma tupla
Prelude> snd ("a", "alo")
"alo"


