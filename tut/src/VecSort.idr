
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


