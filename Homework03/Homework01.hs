import Text.XHtml (area)
import System.Win32 (COORD(yPos))
main :: IO()

-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).
monthlyConsump :: Double -> Double -> Double -> String
monthlyConsump consump hours maximumAllow
    | total > maximumAllow = "You have used bigger"
    | total < maximumAllow = "you have used lower"
    | total == maximumAllow = "you have used equal"
    where
        total = consump*hours * 30
    


-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
monthCala :: Double -> Double -> Double -> String
monthCala consump hours maximumAllow
    | total > maximumAllow = "you have used larger, excess " ++ show (total-maximumAllow)
    | total < maximumAllow = "you have used small, saving " ++ show (maximumAllow-total) 
    | total == maximumAllow = "you have used equal, no excess, no saving"
    where total = consump*hours * 30 
res = monthCala 10 10 6000
main = putStrLn $ show res




-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
calcperia :: Double -> Double -> Double
calcperia l w =
    let peri = 2* (l+w)
        area = l*w
    in peri + area



-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements. 
calcquotient :: Double -> Double -> String
calcquotient x y =
    if y == 0
        then "the division is not possible"
        else
            let quo = x/y in show quo

calcquotient2 :: Double -> Double -> String
calcquotient2 x y
    | y == 0 = "the division is not possible"
    | otherwise = let quo = x/y in show quo


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 
sumof :: Double -> Double -> Double
sumof x y =
    let
        prod = x*y
        que = x/y
        prodsq = sqrt prod
        quesq = sqrt que
        in prodsq + quesq

sumof2 :: Double -> Double -> Double
sumof2 x y =
    prodsq + quesq
    where
        prod = x*y
        que = x/y
        prodsq = sqrt prod
        quesq = sqrt que
invertedConstruction :: Double -> Double -> Double
invertedConstruction x y = let sqrtprd = sqrt prd where prd = x*y
                                in sqrtprd + sqrtque where sqrtque = let quo = x/y in sqrt quo


        


