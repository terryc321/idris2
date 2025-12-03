
# idris2
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

