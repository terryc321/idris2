

```
module Tutorial.Intro.FirstIdrisProgram
```

We must be careful to place code inside triple backticks

we can compile this file using pack exec 
```
--- # pack -o hello exec src/Tutorial/Intro/FirstIdrisProgram.md
```

```
||| this is html documentation
||| 

main : IO ()
main = putStrLn "Hello World!"
```
