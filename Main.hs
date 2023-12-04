module Main where

import Lexer 
import Parser
import TypeChecker
import Interpreter


splitOn :: (Char -> Bool) -> String -> [String]
splitOn p s = case dropWhile p s of
                      "" -> []
                      s' -> w : splitOn p s''
                            where (w, s'') = break p s'
    

evaluate :: String -> [Expr]
evaluate lines = execStatement $ splitOn (==';') lines


execStatement :: [String] -> [Expr]
execStatement [] = []
execStatement (line:lines) = (eval $ typecheck $ parser $ lexer line) : execStatement lines


main = getContents >>= print . evaluate

-- cat a.in | runghc Main.hs