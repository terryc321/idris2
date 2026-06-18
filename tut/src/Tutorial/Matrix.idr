
{---
Interactive Development with Types - page 78 - Edwin Brady Idris Book
Transpose
---}

module Tutorial.Matrix

import Data.Vect
import Data.Vect.Elem  -- for `hd`, `tl` on non-empty vectors

transposeMat : Vect m (Vect n elem') -> Vect n (Vect m elem')
transposeMat [] = []
transposeMat (x :: xs) = ?transposeMat_rhs_1
             

