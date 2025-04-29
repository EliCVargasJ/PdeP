aproboAlumno :: Int -> Bool 
edadJuan :: Integer
aproboAlumno nota = nota >=6

edadJuan = 22

--segundoNombreJuan= "Jose"

doble :: Int -> Int
doble x = 2 * x 

cuadruple :: Int -> Int
cuadruple = doble . doble 




maximo :: Ord a => a -> a -> a
maximo x y | x > y     = x 
        | otherwise = y 

puedoAvanzar :: String -> Bool 

puedoAvanzar color | color == "verde" = True
                   | otherwise        = False 

nombrePar :: String -> Bool 
nombrePar = even . length 
