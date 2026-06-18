
# idris2

Lets not be dramatic about writing idris2 code but is it very painful. accept it.

the editor interaction with emacs is nowhere near sufficiently competent to guide 
the user through the minefield of half haskell / half idris compile time / half idris run time 

the system seems ambivalent to whether it helps or not.

Lets try to model a simplistic text editor one buffer , one cursor where the text will be inserted or deleted.

A string buffer , similar to what emacs might 'conceptually' use . a list of characters
and an index. this being idris we tried to be more specific using some of the idris types available.
we called the list of characters a Vect , a list of known length of a certain type , in this case Char 
meaning character, hopefully thats unicode done and dusted. 

the cursor is the index into the string buffer we used the Fin type for this , it has a peculiar
definition meaning Fin n is an index from 0 to < n , thats strictly less than n , 
so for our string buffer of length n , our cursor is defined as Fin (S n) , 

lets illustrate this 

```
  a b c 
  0 1 2 3
  | | | |

let our string be "abc" it has 3 characters 
awkward indices are labelled 0=a 1=b and 2=c  
indice 3 is out of bounds of the 'string' but allows our cursor | to be at the end of the text 

```

we have tried to define a State which has a known list of characters of definite length and 
a cursor into that list. cursor is defined as Fin (S n) for a Vect of length n . 
what this means is the cursor is finite and has an index strictly less than (S n) the successor of n , 
peano arithmetic speak . 

after this we proceeded to move the cursor around an initial state , we were able to build up the 



a statically known Vect n 'a'

# editor 
[editor notes](editor/)

if we had a buffer of text as a list and some index into it , 
we can only sort of move forwards one step at a time as AI said i should use
natural numbers 
very limited 

we can move about the list forward , but we cant really go back one character 
the AI says we should use a zipper instead where the cursor position is 
implicit rather than explicit , 
heaven knows how we find out where the cursor is , 

we soldier on ...


# tut

tut directory holds community idris notes from below 

https://idris-community.github.io/idris2-tutorial/Tutorial/Intro.html



# install a pack ?

https://github.com/stefan-hoeck/idris2-pack/blob/main/INSTALL.md

follow these instructions may rebuild idris2 several times

```
Package Collection  : nightly-251202
Idris2 URL          : https://github.com/idris-lang/Idris2
Idris2 Version      : 0.8.0
Idris2 Commit       : acde1c9260fffb140525fea191a17cd23368c61c
Scheme Executable   : scheme
Pack Commit         : bdd69a9a403dc17c10bfd39978d8a63c12085f23
Installed Libraries : base
                      contrib
                      idris2
                      linear
                      network
                      prelude
                      test

export PATH=~/.local/bin:$PATH

pack update

pack new lib tut
# this will create a working directory called tut for tutorial to begin !

cd tut

# add this line to tut.ipkg
depends = base, contrib, idris2

# make documentation if thats worth it
idris2 --mkdoc *.ipkg

```


# hacking

idris2 play ground

cannot see file contents as it is an IO action but idris is like haskell , lazy , so
all see is MKIO ... nothing at all related to file contents

## emacs setup

```
emacs -Q -l 'init.el'

C-x C-f Basic.idr
M-x idris2-repl

load the Basic.idr into idris2 
C-c C-l

we cannot see IO() in idris2 without running :exec main
all i see file contents is MKIO () .. all instructions to build action from IO 
```

## avoiding side effects

handicap ? of no side effects

certainly not as easy as whipping up a simple loop with assignment to solve some problems

also not entirely clear on recursion if it actually solves the problem interested in.

* clarify *

advent-code-2025-day-01 part two

dial can be turned from 0 through 99.
turning to right increases dial value.
turning to left decreases dial value.
once at 99 if turn right once more wraps around to 0.
likewise dial at 0 and turn left , makes the dial point at 99

procedural determine whenever dial hits zero , increment a counter.
except cannot since no side effects .
so use procedure calls - .
except when determine it is time to 'increment' counter , when dial starts at zero or foresight
that if at 99 turn right it will hit 0 , or at 1 and turn left it will also hit 0 .

