
# Introduction

Many of the Markdown files [making up this book](https://github.com/idris-community/idris2-tutorial) (those with a `.md` file extension) are _literate_ Idris files , consisting of a mixture of
Markdown and Idris code.

```idris2
module Tutorial

import Tutorial.Intro
import Tutorial.Intro.FirstIdrisProgram

test : String
test = "Hello from Idris2!"
```
