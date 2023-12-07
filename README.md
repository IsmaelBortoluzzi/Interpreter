# Interpreter

Interpreter developed for a hypothetical functional language using Haskell
for the subject of *Programming Languages* of UFFS.

<br>

The subject aims primarily towards how a programming language is implemented


<br>


##### To test it:
    cat code.mylang | runghc Main.hs

    # The result should be:

    [
      Num 9,
      Num 25,
      List [Num 2,Num 3],
      Num 12,
      List [Num 7,Num 8,Num 9],
      List [Num 1,Num 10,Num 3],
      Num 26,
      Num (-26),
      List [Num 10,Num 3,Num 10,Num 3],
      List [Num 2,Num 4,Num 6,Num 8,Num 10],
      Num 45,
      List [Num 10,Num 3,Num 10,Num 3],
      List [BTrue,BFalse,BTrue,BFalse,BTrue],
      List [BFalse,BTrue,BFalse,BTrue,BTrue],
      List [BFalse,BFalse,BFalse,BFalse,BFalse],
      List [Num 0,Num 1,Num 2,Num 3,Num 4,Num 5,Num 6,Num 7,Num 8,Num 9,Num 10],
      List [Num 0,Num 2,Num 8,Num 18,Num 32,Num 50,Num 72,Num 98,Num 128,Num 162,Num 200],
      List [Num 10,Num 11,Num 12,Num 13,Num 14,Num 15,Num 16,Num 17,Num 18,Num 19,Num 20],
      List [Num 5,Num 6,Num 7,Num 8,Num 9,Num 10]
    ]


##### Or you can run each statement separately with the exemples:
    cat exemples/exemple1.mylang | runghc Main.hs
    cat exemples/exemple2.mylang | runghc Main.hs
    cat exemples/exemple3.mylang | runghc Main.hs
    cat exemples/exemple4.mylang | runghc Main.hs
    cat exemples/exemple5.mylang | runghc Main.hs
    cat exemples/exemple6.mylang | runghc Main.hs
    cat exemples/exemple7.mylang | runghc Main.hs
    cat exemples/exemple8.mylang | runghc Main.hs
    cat exemples/exemple9.mylang | runghc Main.hs
    cat exemples/exemple10.mylang | runghc Main.hs
    cat exemples/exemple11.mylang | runghc Main.hs
    cat exemples/exemple12.mylang | runghc Main.hs
    cat exemples/exemple13.mylang | runghc Main.hs
    cat exemples/exemple14.mylang | runghc Main.hs
    cat exemples/exemple15.mylang | runghc Main.hs
    cat exemples/exemple16.mylang | runghc Main.hs
    cat exemples/exemple17.mylang | runghc Main.hs
    cat exemples/exemple18.mylang | runghc Main.hs
    cat exemples/exemple19.mylang | runghc Main.hs


<br>



##### Notices:
- You can run multiple statements by separating each with ";"
- You can comment lines by adding "#" at the start of it
- Comments MUST have ";" at the end of the line

## Important
- Since we can run multiple statemes, the result will be a list
of evaluated expressions. Don't mistake this haskell list with the list implemented 
in the interpreter. The later has a "List" prefix:

  - Num evaluated in exemple 1: [Num 9]
  - List[Num] evaluated in exemple 5: [List [Num 7,Num 8,Num 9]]
