
# idris2

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

