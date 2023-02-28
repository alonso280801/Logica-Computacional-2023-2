
--1. Función esPalindromo: recibe como parámetro una lista y devuelve un booleano, 
--True en caso de que la lista sea un palíndromo y False en el caso contrario.


--2. Función divisores: recibe como parámetro un natural n y devuelve 
--una lista con todos los divisores de n.


--3. Función primos, recibe como parámetro un natural n y devuelve una 
--lista con todos los números primos entre 1 y n.
primo:: Int -> Bool
primo x = if (divisores x == [x,1]) then True else False
primos :: Int -> [Int]
primos x = [y|y <- divisor x ,primo y == True]


--4. Función sumaPares, recibe como parámetro una lista de pares ordenados 
--y devuelve una par con el resultado de sumar todos los pares ordenados de la lista.
sumaPares :: [(Int, Int)] -> (Int, Int)
sumaPares [] = (0,0)
sumaPares ((x,y):xs) = (x + fst (sumaPares xs), y + snd (sumaPares xs))


--5. Función productoCartesiano, recibe como parámetros dos listas, A y B, 
--y devuelve una lista con el producto cartesiano, AxB.
productoCartesiano :: [a] -> [b] -> [(a,b)]
productoCartesiano [] _ = []
productoCartesiano _ [] = []
productoCartesiano (x:xs) (y:ys) = (x,y) : productoCartesiano (x:xs) ys ++ productoCartesiano xs (y:ys)


--6. Función aplica, recibe como parámetros una función y una lista, y devuelve 
--una lista con el resultado de evaluar cada elemento.


--7. Función modulo, sin usar la función módulo predefinida en Haskell.


--8. Funcipon cadenaPar, recibe como parámetro una cadena y devuelve 
--True si la longitud de la cadena es par y False en el caso contrario.
--cadenaPar['a','a','b','a','a']
longitudCadena:: String -> Int
longitudCadena []=0
longitudCadena (x:xs)=1+longitudCadena xs
cadenaPar :: String -> Bool
cadenaPar x= if (mod (longitudCadena x) 2 == 0) then True else False


--9. Función eliminaRepetidos, recibe como parámetro una lista 
--y devuelve la lista sin repetidos.


--10. Función ackermann.
ackermann :: Int -> Integer -> Integer
ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann 1 n = n + 2
ackermann 2 n = 2 * n + 3
ackermann 3 n = 2 ^ (n + 3) - 3
ackermann m n = ackermann (m - 1) (ackermann m (n - 1))






