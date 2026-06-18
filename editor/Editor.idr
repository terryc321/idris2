{--

:browse Data.List 
:browse Data.Vect
:browse Data.Nat 
:browse Data.Fin
 
 
--}

module Editor

import Data.List as L
import Data.Nat as N
import Data.Fin as F
import Data.Vect as V 
import System.Clock as C 
import Prelude

-- STATE
-- text is some container of length n , cursor is a finite natural number 
-- strictly less than successor of n (ie cursor < n+1 or cursor <= n)
record State (n : Nat) where
  constructor MkState
  text   : Vect n Char
  cursor : Fin (S n)

-- the initial state is an empty buffer 
initState : State 0
initState = MkState [] 0   

dummyState : State 4
dummyState = MkState (V.fromList ['a','b','c','d']) 4   



{--
put char at end of buffer and move cursor to end of buffer 
--}
insertAtEnd : State n -> Char -> State (S n)
insertAtEnd is ch = 
  let text' = V.snoc (text is) ch          
      cursor' = F.shift 1 (cursor is)
  in MkState text' cursor'


{--
put char at start of buffer and move cursor to start of buffer 
FZ finite zero 
FS finite succ -- like S the Succ of Nat  
--}
insertAtStart : State n -> Char -> State (S n)
insertAtStart is ch = 
  let text'   = V.fromList ([ ch ]) ++ (text is)
      cursor' = 0
  in MkState text' cursor'
  
{--
insert anywhere in the string -- more generic 
essentially trying to emulate this where 1 is position trying to insert at 
(L.take 1 ['a','b','c']) ++ ['X'] ++ (L.drop 1 ['a','b','c'])
-- before ++ ins ++ after are they a List Char ?
--}

-- this decrements natural number if it can else it returns original number Z
natDec : Nat -> Nat 
natDec Z = Z 
natDec (S n) = n 


-- insert a character at position i
insertAt : State n -> Fin (S n) -> Char -> State (S n)
insertAt st i ch =
   let text' = (V.insertAt i ch (text st))
       cursor' = F.shift 1 (cursor st)
   in MkState text' cursor' 


{--
λΠ> fromList ['a','b','c']
['a', 'b', 'c']
λΠ> V.fromList ['a','b','c']
['a', 'b', 'c']
λΠ> V.insertAt 0 'X' (V.fromList ['a','b','c'])
['X', 'a', 'b', 'c']
λΠ> V.insertAt 1 'X' (V.fromList ['a','b','c'])
['a', 'X', 'b', 'c']
λΠ> V.insertAt 2 'X' (V.fromList ['a','b','c'])
['a', 'b', 'X', 'c']
λΠ> V.insertAt 3 'X' (V.fromList ['a','b','c'])
['a', 'b', 'c', 'X']
λΠ> MkState (V.insertAt 3 'X' (V.fromList ['a','b','c'])) 4
MkState ['a', 'b', 'c', 'X'] (FS (FS (FS (FS FZ))))
λΠ> cursor initState 
FZ
λΠ> F.shift 1 (cursor initState)
FS FZ
--}

-- insertAt : State n -> Fin v -> Char -> State (S n)
-- insertAt st v ch = 
--   let before = V.take v (text st) 
--       after  = V.drop v (text st)
--       ins    = V.fromList [ch]
--   in MkState (before ++ (after ++ ins)) 0
  
  
-- delete a character at position i 
deleteAt : State (S n) -> Fin (S n) -> State n
deleteAt st i =
   let text' = (V.deleteAt i (text st))
       cursor' = i
   in MkState text' cursor' 
   
   
-- move cursor to a position i    
moveTo : State n -> Fin (S n) -> State n   
moveTo (MkState text cursor) i = MkState text i 


{--
move cursor to end of buffer 
a b c d e f g
      | 1 2 3 
length = 7 cursor at 3 shift by len - c 
--}

-- this decrements natural number if it can else it returns original number Z
natDec2 : Nat -> Nat -> Nat
natDec2 Z _   = Z 
natDec2 n Z   = n 
natDec2 (S n) (S m)  = natDec2 n m 

-- just string them along 
mkNat : Integer -> Nat 
mkNat 0 = Z 
mkNat n = if n < 0 then mkNat 0 else S (mkNat (n- 1))


{--
gotoEndFin : Fin (S n) -> Nat -> Fin (S n)
gotoEndFin f n = 
   if N.lt (F.finToNat f) n then gotoEndfin f (S n)
   else Fin n 
--}



{--
-- place the cursor at end of buffer 
-- ideally could just say cursor = length (text s) for some state s 
--}           
-- lastFin : {n : Nat} -> Fin (S n) 
-- lastFin n = Fin (S n)

-- lastFin : {n : Nat} -> Fin (S n)
-- since Fin is essentially peano arithmetic we can only really try 
-- successor or pattern match 

-- here we continue climbing up the ladder until 2nd argument 
-- it wraps round to zero Z 
-- lastFin : { n : Nat} -> Fin (S n) -> Fin (S n) -> Fin (S n)
-- lastFin a FZ = a 
-- lastFin a b = lastFin b (F.finS b)

-- we were successfully able to communicate to idris my intentions 
-- implicit { n  : Nat } is required 
-- gotoEnd : { n : Nat } -> State n -> State n   
-- gotoEnd (MkState t c) = MkState t (lastFin c (F.finS c))

lastFin : {n : Nat} -> Fin (S n)
lastFin {n = Z} = FZ
lastFin {n = (S k)} = FS lastFin

gotoEnd : {n : Nat} -> State n -> State n   
gotoEnd (MkState t c) = MkState t lastFin 

gotoStart : {n : Nat} -> State n -> State n   
gotoStart (MkState t _) = MkState t 0 


{-- 
a " large buffer " 
simply a list of 1000 'x' s , not important , only exercise 
the gotoEnd and gotoStart 
our main function

idris2 MyFile.idr -o myprog
./build/exec/myprog
--}

largeText = Data.Vect.replicate 10 'x'
largeState = MkState largeText 0 

myVal : Integer 
myVal = cast "123" 


{-- 
entry : {n : Nat } -> Fin (S n)
entry n = do let mfin = F.natToFin n
             case mfin of 
               Just v => v
               Nothing => ??



exerciseBuffer : Nat -> Fin (S n) -> IO () 
exerciseBuffer Z     k   = putStrLn ""
exerciseBuffer a     k   = do let st = MkState (Data.Vect.replicate a 'x') a  
                              let v  = gotoEnd st 
                              let v2 = gotoStart st   
                              let v3 = gotoEnd st
                              let v4 = gotoStart st 
                              let v5 = gotoEnd st
                              putStrLn $ "put cursor at end for buffer number " ++ show n
                              exerciseBuffer r k 
--}



test = let n : Nat 
           n = 100 
       in n 
       
test2 : IO () 
test2 = do let n : Nat 
               n = 100 
           putStrLn $ "you make " ++ show n 

test3 : IO () 
test3 = do putStr $ "enter a number : "
           line <- getLine 
           let n : Nat 
               n = cast line 
           putStrLn $ "you make " ++ show n 
           
           
                                 
           

{--
-- the entry point 
main : IO ()
main = do putStrLn "hello"          
          let n : Nat 
              n = 100
          case F.natToFin n n of 
           Nothing => putStr "something wrong"
           Just v => do let st = MkState (Data.Vect.replicate n 'x') (Fin n)
                        putStrLn "ok finished"
                        
--}          
          

                                                                                                                    
-- -- the entry point 
-- main : IO ()
-- main = do putStrLn "hello"          
--           let n = 10000
--           let st = MkState (Data.Vect.replicate n 'x') n
--           line <- getLine 
--           let v : Nat 
--               v = Prelude.cast "10"
--           case v of 
--            Just n => 
--             do exerciseBuffer 10 n
--                putStrLn "done"
--            Nothing => 
--             putStrLn "fail , couldnt read the string"
                                

                    

{--
main : IO ()
main = do putStrLn "hello"
          putStr "Please enter size of buffer to replicate : "
          str <- getLine 
          case cast str of 
               Just n => do putStr $ "buffer size " ++ show n ++ " requested"                           exerciseBuffer n
                         putStrLn "all completed"
               Nothing => do putStrLn "dont be a dummy" 
--}          

    
   
  -- let c = cursor s 
  --     t = text s
  -- in let len = V.length t 
  --    in let shift = natDec (natDec2 len (finToNat c))
  --       in let cursor' = F.shift shift c
  --              text'   = text s          
  --          in MkState text' cursor'
           
  
  
      
  
  


{--
insertAt : State -> Nat -> Char -> State 
insertAt is n ch = 
  let before = V.take n (text is)           
      after  = V.drop n (text is) 
      ins    = [ch]
  in let text'   = V.fromList $ (before ++ (ins ++ after))
         cursor' = (length before) + 1
     in MkState text' cursor'
--}  
-- temp (n:Nat) =let v = V.fromList ['a','b','c']      
--               in (V.take n v) ++ ['X'] ++ (V.drop n v) 
       
       
       
  

-- insertAtEnd : State -> Char -> State 
-- insertAtEnd (MkState text cursor) ch = 
--   let text' = text ++ [ch]
--   in let cursor' = shift 1 cursor   
--      in MkState text' cursor' 



-- foo : Fin (S n) -> Fin (S (S n))            
-- foo = ?help
  


-- -- moving a character forward             
-- forward : State -> State
-- forward (MkState text cursor) =  MkState text (S cursor)


-- no op 
-- since we do not destructure or make anything we can just return it 
noop : State n -> State n
noop = id 
-- all these are equivalent 
-- noop s = s 
-- noop (MkState text cursor) =  MkState text cursor

noopIdentity : (s : State n) -> noop s = s
noopIdentity = \s => Refl

noopTwice : (s : State n) -> noop (noop s) = noop s
noopTwice = \s => Refl 




-- when constructed state above we have defined routines text and cursor
-- theCursor = cursor 
-- theText = text 
    
            
-- record State where
--   constructor MkState
--   text   : List Char
--   cursor : Nat
  

-- theCursor : State -> (Fin Nat)
-- theCursor s = cursor s

oneState : State 1
oneState = MkState ['a'] 1   

-- badState : State 
-- badState = MkState [] 1   

-- natToFin 

-- insertAt : (cursor : Fin (S (length text))) -> (text : List Char) -> List Char
-- insertAt = 

{--
insertCursor :
    (text : List Char) ->
    (cursor : Fin (S (length text))) ->
    Fin (S (length (insertAt cursor text ch)))
insert text n = ?how     
--}

-- insertChar : State -> Char -> State 
-- insertChar (MkState text cursor) ch = 
--   let n = finToNat cursor 
--   in let text' = (take n text) ++ [ch] ++ (drop n text)
--          n' = natToFin (n + 1)
--      in MkState text' n' 
     
     
  
  


-- 0 <= 1  where <= is less than equal to for natural numbers 
f : Data.Nat.LTE 0 1 
f = LTEZero  

-- 2 <= 0 where 2 is Succ(Succ Zero) and 0 is Zero both natural numbers
-- f2 : Data.Nat.LTE 2 0 
-- f2 = ?todo 
-- unprovable 

f3 : Data.Nat.LTE 1 2 
f3 = LTESucc LTEZero  

f4 : Data.Nat.LTE 2 3 
f4 = LTESucc (LTESucc LTEZero) 

-- f5 : Data.Nat.LTE 200 201 
-- f5 = ?todo2

f0 : LTE 0 0 
f0 = LTEZero

lteS' : LTE n' m -> LTE (S n') (S m)
lteS' = LTESucc

ltePlus1 : (n : Nat) -> LTE n (S n)
ltePlus1 Z = LTEZero
ltePlus1 (S n) = lteS' (ltePlus1 n)

f5 : LTE 200 201
f5 = ltePlus1 200



{--
define what it means to be a valid state

let c be the position of cursor (cursor s) for some given state s 
 c >= 0 
 c <= length text 
--}
-- validState : State -> Type
-- validState (MkState tx cu) = cu = cu 

-- validState2 : State -> Type
-- validState2 (MkState tx cu) = length tx = length tx  

-- validState3 : State -> Type
-- validState3 (MkState text cursor) = LTE cursor (length text)





 -- let c = cursor s 
 --     len = length (text s)
 --  in (Data.Nat.GTE c 0 , Data.Nat.LTE c len)


--ValidState s = (cursor s = cursor s , cursor s = cursor s)
-- (LTE 0 (cursor s) , LTE (cursor s) (length (text s)))  
  
-- -- define an initial valid state   
-- initValid : validState Editor.initState
-- initValid = (LTEZero, LTEZero) 
-- --initValid = (Refl, Refl)



