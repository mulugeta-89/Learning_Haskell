
-- Question 1
-- Write a multiline comment below.

{-func stg = "mulugeta"
func1 who = "shimels" -}


-- Question 2
-- Define a function that takes a value and multiplies it by 3.
multiplier x = x*3

-- Question 3
-- Define a function that calculates the area of a circle.
findingArea l = l*l

-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
calcVol h r = findingArea r * h
-- Question 5
-- Define a function that takes the height and radius of a cylinder and checks if the volume is greater than or equal to 42.

finder h r = calcVol h r >= 42
