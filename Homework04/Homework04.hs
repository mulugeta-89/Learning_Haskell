import Distribution.Compat.Lens (_1)
-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])] -> Int
nested [(_,[_,b]), _] = b










-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
checkElem :: [a] -> [a]
checkElem (_:_:_:xs) = xs
checkElem x = x



checkElem2 :: [a1] -> [a2]
checkElem2  arg = case arg of
    [_,_,_] -> []




-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
sumtup :: (Int, Int, Int) -> Int
sumtup (x,y,z) = x+y+z



-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.
checklist :: [Int] -> Bool
checklist [] = True
checklist _ = False


-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.
tailer :: [a] -> [a]
tailer (_:rest) = rest
tailer [] = []




-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)
evenAdd :: Int -> Int
evenAdd arg = case even arg of
    True -> arg+1
    False -> arg

res = evenAdd 6
main = putStrLn $ show res
