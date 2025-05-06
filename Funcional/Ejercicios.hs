



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

-- Inicialmente defini area como area :: Int -> Int -> Float  pero no puedo esperar un 'float' si le mando dos valores del tipo Int 

area :: Float -> Float -> Float

area base altura  = base * altura

-- 5. Definir la funcion esBisiesto, indica si un anio es bisiesto. (un anio es bisiesto si es divisible por 400 
--    pero no es divisible por 100 )
-- Nota: resolverlo utilizando la funcion esMultiploDe

esBisiesto :: Int -> Bool
esBisiesto anio = esMultiploDe 400 anio || segundaOpcionAnioBisiesto anio

segundaOpcionAnioBisiesto :: Int -> Bool
segundaOpcionAnioBisiesto anio = not (esMultiploDe 100 anio ) && esMultiploDe 4 anio

-- 6. Definir la funcion celsiusToFahr, pasa una temperatura en grados Celsius a grados Fahrenheit. 

celsiusToFahr :: Float -> Float

celsiusToFahr temperatura = 1.8 * temperatura + 32

-- 7. DEfinir la funcion FahrToCelsius, la inversa de la anterior. 

fahrToCelsius :: Float -> Float

fahrToCelsius temperatura = (temperatura - 32) * 5/9

-- 8. Definir la funcion haceFrioF, que indica si una temperatura expresada en grados Fahrenheit es fria.
-- Decimos que hace frio si la temperatura es menor a 8 grados celsius. 

haceFrioF :: Float -> Bool

haceFrioF temperatura
        | fahrToCelsius temperatura < 8 = True
        | otherwise  = False

-- 9. Definir la funcion mcm que devuelva el minimo comun multiplo entre dos numeros, de acuerdo a esta formula:
-- mcm (a,b) = { mcd (a,b)}

mcm :: Int -> Int -> Int

--mcm numero1 numero2 = numero1 * numero2 / gcd numero1 numero2
-- la funcion de arriba esta "mal" porque la expresion /  devuelve un float, como declare un entorno Int debo usar div en vez de /
mcm numero1 numero2 = (numero1 * numero2) `div` gcd numero1 numero2
-- div debo ponerlo entre comillas invertidas porque es un operador, no una funcion.

-- 10. 
{- Tenemos tres numeros que vamos a considerar como el nivel del rio Parana a la altura de Corrientes, medido en tres dias consecutivos.
   Cada medicion es un entero que representa una cantidad en cm. 
   A partir de estas tres mediciones definir las siguientes funciones:

  a) Dispersion, que toma tres valores y devuelve la diferencia entre el mayor y el menor de ellos.

  b) diasParejos, diasLocos y diasNormales reciben los valores de los tres dias. Se dice que son dias parejos si la dispersion 
  es chica, que son dias locos si la dispersion es grande y que son dias normales si no son ni parejos ni locos.
  Una dispersion se considera chica si es de menos de 30 cm, y grande si es de mas de un metro (100 cm).
 -}

dispersion  :: Int -> Int -> Int -> Int
dispersion dia1 dia2 dia3 = max dia1 (max dia2 dia3) - min dia1 (min dia2 dia3)

sonDias :: Int -> Int -> Int -> String
sonDias dia1 dia2 dia3
    | dispersion dia1 dia2 dia3 < 30 = "dias parejos"
    | dispersion dia1 dia2 dia3 > 100 = "dias locos"
    | otherwise = "dias normales"

--11. 
{- En una plantacion de pinos, de cada arbol se conoce la altura expresada en cm. El peso de un pino se puede calcular a partir de la altura
   Asi: 3kg x cm hasta 3 metros. 2kg xcm arriba de los 3 metros. 
   Los pinos se usan para llevarlos a una fabrica de muebles, a la que le sirven arboles entre 400 y 1000kg, un pino fuera de este rango no 
   le sirve a la fabrica. 
   Para esta situacion: 

   a) Definir la funcion pesoPino, que recibe la altura de un pino y devuelve su peso.
   b) Definir la funcion esPinoUtil, que recibe un peso en kg y devuelve True si un pino de ese peso le sirve a la fabrica. Falso en caso contrario. 
   c) Definir la funcion sirvePino, recibe la altura de un pino y devuelve True si un pino de ese peso le sirve a la fabrica y Falso en caso contrario. (Usar composicion)     
-}

type Peso = Int
type Altura = Int

pesoPino :: Altura -> Peso
pesoPino alturaEnCm
    | alturaEnCm <= 300 = alturaEnCm * 3
    | otherwise = alturaEnCm * 2

esPinoUtil :: Peso -> Bool
esPinoUtil pesoEnKg
    | pesoEnKg >= 400 && pesoEnKg <= 1000 = True
    | otherwise = False

sirvePino :: Altura -> Bool
sirvePino = esPinoUtil.pesoPino

