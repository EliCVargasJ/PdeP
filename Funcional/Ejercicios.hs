import Text.Show.Functions


-- 1. Definir la función esMultiploDeTres/1, que devuelve True si un número es múltiplo de 3

esMultiploDeTres :: Int -> Bool
esMultiploDeTres n = mod n 3 == 0

-- 2. Definir la función esMultiploDe/2, que devuelve True si el segundo es múltiplo del primero

esMultiploDe :: Int -> Int -> Bool
esMultiploDe n m = mod m n == 0  --La pregunta seria: 'm' es multiplo de 'n'? Ej: 12 es multiplo de 3? 

-- 3. Definir la función cubo/1, devuelve el cubo de un número.

cubo :: Int -> Int

cubo n= n*n*n 

-- 4. Definir la función area/2, devuelve el área de un rectángulo a partir de su base y su altura.

