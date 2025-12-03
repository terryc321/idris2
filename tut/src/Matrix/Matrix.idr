
{---
Interactive Development with Types - page 76 - Edwin Brady Idris Book

Matrix Operations

Addition
Multiplication
Transpose

---}

module Matrix.Matrix

import Data.Vect

{--
Addition

(1 2)     ( 7  8)
(3 4)   + ( 9  10)
(5 6)     (11  12)

[[1,2],[3,4],[5,6]] 

--}

-- map2 : Functor f => (a -> b -> c) -> f a -> f b
map2 f x y = if x == [] then []
             else if y == [] then []
             else (f x y) :: (map2 f xs ys)
             



-- vec map ?
matrix_add : Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
-- matrix_add a b = map (\r => (\r2 => map (+) r r2


e1 : Vect 2 Int
e1 = [1,2] 

e2 : Vect 3 (Vect 2 Int)
e2 = [[1,2],[3,4],[5,6]] 

e3 : Vect 3 (Vect 2 Int)
e3 = [[7,8],[9,10],[11,12]] 

e4 : Vect 3 (Vect 2 Int)
e4 = matrix_add e2 e3



