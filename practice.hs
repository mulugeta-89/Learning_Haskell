import Control.Concurrent.STM (check)
import GHC.Float (word2Double)
import Distribution.CabalSpecVersion (cabalSpecFromVersionDigits)

main :: IO()

func :: Int -> Int -> Int
func x y = x+y


-- main = putStrLn $ show res



name :: String
name = "Mulugeta"

-- using conditional statements
checkLocal :: String -> String
checkLocal ip = 
    if ip == "127.0.0.1"
        then "it's local host"
        else "it's not a local host"
-- res = checkLocal "127.0.0.1"
-- main = putStrLn res

-- using guards for multiple conditionals
checkAge :: Int -> String
checkAge age
    | age <= 18 = "you are just young"
    | age > 18 && age <= 45 = "you are becomming adult bro, upto 45"
    | age > 45 = "You are old, my friend"
    | otherwise = "you are not a human"

-- using let key workd for expression binding
hotterInKelving :: Double ->Double -> Double
hotterInKelving c f =
    let fToc t = (t-32)*5/9
        cTok t = t + 273.16
        fToK t = cTok (fToc t)
    in if c > f then cTok c else fToK f
seconds = 10 + (let seconds = 60 in seconds*10)
volume = let height = 10; width = 10; length = 10; in height*width*length
    



-- using where key word2Double
hotterInKelvin :: Double -> Double -> Double
hotterInKelvin c f =
    if c > ftoc f then ctok c else ftok f
    where
        ftoc t = (t-32)*5/9
        ctok t = t + 273.16
        ftok t = ctok (ftoc t)

-- exercise the let keyword, use for divide the problem in smaller problems
newFormula :: Double -> Double ->Double -> Double
newFormula m a v = 
    let calcForce = m*a
        calcMont = m*v
    in calcForce + calcMont


-- practice using where keyword, use for when there are many guards
calcArea :: Double -> Double -> String
calcArea l w
    | area < 20 = "area less than 20"
    | area < 40 = "area less than 40"
    | area < 60 = "area less than 60"
    | area < 80 = "area less than 80"
    | otherwise = "you have a huge house"
    where
        area = l * w

gettingacc :: String -> String -> String
gettingacc fname lname =
    if fname == "" || lname == ""
        then "What was your name again"
        else
            let
                f = head fname
                l = head lname in [f] ++ "." ++ [l] ++ "."
res = gettingacc "Mulugeta" "Hailegnaw"
main = putStrLn $ show res




          
