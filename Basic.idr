
module Basic

-- idris2 Basic.idr -o basic 
-- time ./build/exec/basic 
-- M-x idris2-repl
--
-- C-c C-l load file

import Data.String 
import Data.List

-- natural numbers 0 1 2 3 ...
-- :doc Nat

-- Bool (booleans) 
-- :doc Bool
t : Bool
t = True

f : Bool
f = False

-- and
-- or
-- xor
-- not

-- fixnums 
foo : Int 
foo = 3 

-- foo + foo
-- int to String conversion 
-- read "3" :: Int
-- show 3 
-- "asdf" + (show foo)

-- simple addition for fixnums
add1 : Int -> Int
add1 x = x + 1 
-- what is the largest Fixnum ?
-- what is the smallest Fixnum ?
-- can we show wrap around behaviour
-- add 1 to largest fixnum
-- subtract 1 to largest negative fixnum 

-- power 2 raised to 3 gives float ?
p23 = 2 `pow` 3

-- Int
i1 : Int
i1 = 123

-- Integer
i2 : Integer
i2 = 123123123123123123123123123123123

-- Float -- no floats
-- f : Float
-- f = 3.14

-- Double
d : Double
d = 3.14

-- Char
ch : Char 
ch = 'A'

-- List 
xs : List Int 
xs = [1,2,3]
ys = 2 :: xs

-- String is also a list
str : String
str = "alpha"

-- string reverse
str2 = reverse str
-- char at nth 

-- functions on string 
-- see Data.String words lines unlines 
-- words undefined in idris ?

-- wds : List String
-- wds = words "alpha beta charlie delta echo foxtrot"


-- haskell "asdf" == ['a','s','d','f'] is True

-- we cannot equate types ? i thought we could talk about types ?
-- are two types equal ?
-- clearly cannot be unless they are an alias for each other
-- in which case we would know right ?

-- lets do the factorial function 
-- mutually recursive - we are okay since we cannot redefine the procedure elsewhere 
-- unlike ml ocaml - we can redefine so extort to and f2 and f3 and f4 ...

-- how would i say call factorial2 provide r then provide n 
-- in general have positional arguments 

factorial2 : Integer -> Integer -> Integer 
factorial2 n r =  if n == 1 then r else factorial2 (n - 1) (r * n)

factorial : Integer -> Integer 
factorial 1 = 1
factorial 2 = 2
factorial n = factorial2 n 1

-- forgo the io for now - can we make a data type
-- read an example 
example : List String
example = ["L68", "L30", "R48" , "L5",    "R60",    "L55",    "L1",    "L99",    "R14",    "L82"]

-- :doc chr
-- :browse Data.String
-- :browse Data.List

-- how do i get the rest of the string ?
-- use partial to side step compiler complain about legit procedure
partial fex : String -> List String ;
fex "" = []
fex s = if (strLength s) < 1 then []
        else if (strIndex s 0) == 'L' then ["LEFT"] 
        else if (strIndex s 0) == 'R' then ["RIGHT"]
        else []
        
-- how do i get rest of an idris string ?
-- strSubstr 1 3 s
rest : String -> String
rest "" = ""
rest s = let len : Int = cast (String.length s) 
         in strSubstr 1 len s 
         
restN : String -> Maybe Int
restN "" = Nothing
restN s = parseInteger (rest s)

data Turn = Left Int | Right Int 


partial fex2 : String -> Maybe Turn ;
fex2 "" = Nothing
fex2 s = if (strLength s) < 1 then Nothing
        else if (strIndex s 0) == 'L' then let r = restN s 
                                           in case r of
                                           Just x => Just (Left x)
                                           Nothing => Nothing
        else if (strIndex s 0) == 'R' then let r = restN s 
                                           in case r of
                                           Just x => Just (Right x)
                                           Nothing => Nothing
        else Nothing
        
-- remove Nothings 
-- ensure same length 

-- map (\x => x + 1 ) [1,2,3]                
is_something : Maybe Turn -> Bool 
is_something x = case x of 
                 Nothing => False 
                 _ => True


reduce_just : (List (Maybe Turn)) -> List Turn
reduce_just [] = []
reduce_just ((Just x) :: y) = x :: (reduce_just y)
reduce_just (Nothing :: y) = reduce_just y 
                 
partial exampleDirs : List Turn 
exampleDirs = let x = map fex2 example
                  y = filter is_something (x)
                  z = reduce_just (y)
                  in (z) 
                                      
-- represent current state of dial 
-- (1) points at  (2) number zeros met (3) moves to go
-- data Turns = MkTurns (List Turn)
-- data Dial = State Int Int Turns
data Dial = State Int Int (List Turn)

-- partial exampleTurns : Turns
-- exampleTurns = MkTurns exampleDirs

partial step : Dial -> Dial
step (State d c []) = State d c [] -- no more
step (State 0 c ((Left 0) :: ys)) = step (State 0 (c + 1) ys)  -- consume
step (State 0 c ((Right 0) :: ys)) = step (State 0 (c + 1) ys)
step (State d c ((Left 0) :: ys)) = step (State d c ys)  -- consume
step (State d c ((Right 0) :: ys)) = step (State d c ys)
step (State 1 c ((Left n) :: ys)) = step (State 0 (c + 1) ((Left (n - 1)) :: ys)) -- inc
step (State 99 c ((Right n) :: ys)) = step (State 0 (c + 1) ((Right (n - 1)) :: ys)) -- inc
step (State 0 c ((Left n) :: ys)) = step (State 99 c ((Left (n - 1)) :: ys)) -- wrap
step (State d c ((Left n) :: ys)) = step (State (d - 1) c ((Left (n - 1)) :: ys)) -- click
step (State d c ((Right n) :: ys)) = step (State (d + 1) c ((Right (n - 1)) :: ys)) -- click


-- partial step : Dial -> Dial
-- step (State d c []) = State d c [] -- no more
-- step (State d c ((Left 0) :: ys)) = step (State d c ys)  -- consume
-- step (State d c ((Right 0) :: ys)) = step (State d c ys)
-- step (State 1 c ((Left n) :: ys)) = step (State 0 (c + 1) ((Left (n - 1)) :: ys)) -- inc
-- step (State 99 c ((Right n) :: ys)) = step (State 0 (c + 1) ((Right (n - 1)) :: ys)) -- inc
-- step (State 0 c ((Left n) :: ys)) = step (State 99 c ((Left (n - 1)) :: ys)) -- wrap
-- step (State d c ((Left n) :: ys)) = step (State (d - 1) c ((Left (n - 1)) :: ys)) -- click
-- step (State d c ((Right n) :: ys)) = step (State (d + 1) c ((Right (n - 1)) :: ys)) -- click



partial start : Dial
start = State 50 0 exampleDirs

partial simple1 : Dial
simple1 = State 0 0 [Left 1 , Right 1 , Left 1 , Right 1]




                

-- how do i tell that fex is indeed covering
-- if given an empty string 

{-        
- + Errors (1)
 `-- Basic.idr line 123 col 0:
     fex is not covering.
     
     Basic:123:1--123:28
      119 | -- :doc chr
      120 | -- :browse Data.String
      121 | -- :browse Data.List
      122 | 
      123 | fex : String -> List String ;
                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^
     
     Calls non covering functions: Data.String.strIndex, Data.String.strIndex
-}

{-
i can ask for an index greater than ,well, a large number                 
λΠ> strIndex "adsf" 123343434343434343434343434343434343434343434
prim__strIndex "adsf" -2315878240734227446
-}        

--- String to integer
-- parseInteger "123"
-- 
-- :browse Data.String
--    parseInteger : Num a => Neg a => String -> Maybe a
-- obviously
                
        
-- fex ('L' :: xx) = ["Left"]
-- fex ('R' :: xx) = ["Right"]
-- fex _ = []




main : IO ()
main = do 
  putStrLn "Hello , Idris2 World !"
  

