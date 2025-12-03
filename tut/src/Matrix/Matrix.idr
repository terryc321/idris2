
{---
Interactive Development with Types - page 76 - Edwin Brady Idris Book

Matrix Operations

Addition
Multiplication
Transpose

---}

module Matrix.Matrix

import Data.Vect

import Data.Vect.Elem  -- for `hd`, `tl` on non-empty vectors


{--
Addition

(1 2)     ( 7  8)
(3 4)   + ( 9  10)
(5 6)     (11  12)

[[1,2],[3,4],[5,6]] 

--}

-- -- -- map2 : Functor f => (a -> b -> c) -> f a -> f b
-- -- map2 f x y = if x == [] then []
-- --              else if y == [] then []
-- --              else (f x y) :: (map2 f xs ys)

-- minZeroLeftNeutral  : (n : Nat) -> min 0 n = 0
-- minZeroRightNeutral : (m : Nat) -> min m 0 = 0

-- map2 : (a -> b -> c) -> Vect m a -> Vect n b -> Vect (min m n) c
-- map2 f []        _  = rewrite minZeroLeftNeutral n in []
-- map2 f _         [] = rewrite minZeroLeftNeutral m in []
-- map2 f (x :: xs) (y :: ys) = f x y :: map2 f xs ys

-- map2 : (a -> b -> c) -> Vect m a -> Vect n b -> Vect (min m n) c
-- map2 f []        _        = []
-- map2 f _         []       = []
-- map2 f (x :: xs) (y :: ys) = f x y :: map2 f xs ys


-- can solve if both lists are exactly same length
map2 : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
map2 f [] [] = []
map2 f (x :: xs) (y :: ys) = f x y :: map2 f xs ys


      
  
-- map2 : (a -> b -> c) -> Vect m a -> Vect n b -> Vect (min m n) c
-- map2 f xs ys with (min m n) proof len
--   _ | 0 = []
--   _ | S _ = f (head xs) (head ys) :: map2 f (tail xs) (tail ys)
    
  
-- Your demo
demo2 : Vect 3 Int
demo2 = map2 (+) [1, 2, 3] [4, 5, 6]                          

-- hd : Vect (S n) a -> a
-- hd (x :: xs) = x

-- tl : Vect (S n) a -> Vect n a
-- tl (x :: xs) = xs 


add : Num a => Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
add a b = map2 (\r => (\r2 => map2 (+) r r2)) a b
-- add a b = map2 (map2 (+)) ??



transpose : Vect (S n) (Vect (S m) a) -> Vect (S m) (Vect (S n) a)
transpose (x :: xs) = map head (x :: xs) :: transpose (map tail (x :: xs))


-- -- -- Helper: transpose a non-empty matrix given one row as "template"
-- transposeHelp : 
--      (mat : Vect (S n) (Vect (S m) a))   -- at least 1×1
--   -> (row : Vect (S m) a)                -- non-empty row (same length)
--   -> Vect (S m) (Vect (S n) a)

-- transposeHelp mat   (y::ys)  = (map hd mat) :: (transposeHelp (map tl mat) ys)

-- -- -- main transpose — only works on non-empty matrices
-- transpose : Vect (S n) (Vect (S m) a) -> Vect (S m) (Vect (S n) a)
-- transpose (row :: rows) = transposeHelp (row :: rows) row



-- transposeHelp _      []      = []                   -- impossible due to type

-- transpose : Vect m (Vect n a) -> Vect n (Vect m a)
-- transpose {n} []                = replicate n []
-- transpose (row :: rows)         = zipWith (::) row (transpose rows)

-- -- -- can we say n > 0 and m > 0 ??
-- partial my_transpose_help : Vect n (Vect m a) -> Vect m a -> Vect m (Vect n a) 
-- my_transpose_help _ [] = []
-- my_transpose_help a (y :: ys) = (map hd a) :: (my_transpose_help (map tl a) ys)  

-- partial my_transpose : Vect n (Vect m a) -> Vect m (Vect n a)
-- my_transpose (x :: xs) = my_transpose_help (x :: xs) x




e1 : Vect 2 Int
e1 = [1,2] 


e2 : Vect 3 (Vect 2 Int)
e2 = [[1,2],[3,4],[5,6]] 

e3 : Vect 3 (Vect 2 Int)
e3 = [[7,8],[9,10],[11,12]] 

--- section_3_3_1 page 76 Chapter 3 Interactive development with types 
e4 : Vect 3 (Vect 2 Int)
e4 = Matrix.add e2 e3



