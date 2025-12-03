
{---
Interactive Development with Types - page 71 - Edwin Brady Idris Book

Insertion sort 

Skeleton definition of insertion sort (insSort) , confusingly the module is called VecSort.  Will
be using vectors which are lists with a specified length
---}

module VecSort

import Data.Vect

-- sort list of elements 
-- how compare elements ?
-- bit more restrictive Ordering 
insert : Ord elem' => (x : elem') -> (xsSorted : Vect k elem') -> Vect (S k) elem'
insert x [] = [x] 
insert x (y :: ys) = if x < y then x :: (y :: ys)
                     else y :: (insert x ys)
                     
insSort : Ord elem' => Vect n elem' -> Vect n elem'
insSort [] = []
insSort (x :: xs) = insert x (insSort xs)


{-- 
> :total insSort
VecSort.insSort is total
--}

-- exercises page 75 
my_length : List a -> Nat
my_length [] = 0
my_length (x :: xs) = 1 + my_length xs 

{--
> :total my_length
VecSort.my_length is total

> my_length [1..10]
10
--}

my_reverse : List a -> List a
my_reverse [] = []
my_reverse (x :: xs) = (my_reverse xs) ++ [x]

{-
> :total my_reverse
VecSort.my_reverse is total

> my_reverse [1..10]
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

-}


my_map : (a -> b) -> List a -> List b
my_map f [] = []
my_map f (x :: xs) = f x :: (my_map f xs)


{-
> :total my_map
VecSort.my_map is total

> my_map (* 2) [1..10]
[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
-}

my_vect_map : (a -> b) -> Vect n a -> Vect n b 
my_vect_map f [] = [] 
my_vect_map f (x :: xs) = (f x) :: (my_vect_map f xs)

ex_3_2 = let xs : Vect 4 String = ["Hot" , "Dog" , "Jumping" , "Frog" ]
             f : String -> Nat = length
         in my_vect_map f xs 


{--
> ex_3_2
[3, 3, 7, 4]
> :t ex_3_2
VecSort.ex_3_2 : Vect 4 Nat
> 
VecSort.ex_3_2 is total
--}
