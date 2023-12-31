module Lexer where 

import Data.Char 

data Expr = BTrue
          | BFalse 
          | Num Int 
          | Add Expr Expr
          | Sub Expr Expr 
          | Mul Expr Expr 
          | Div Expr Expr 
          | And Expr Expr
          | Or Expr Expr
          | Not Expr
          | Greater Expr Expr
          | Smaller Expr Expr
          | Equal Expr Expr
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr
          | Paren Expr
          | Let String Expr Expr 
          | List [Expr]
          | ListConcat Expr Expr
          | ListComp Expr String Expr
          | Range Expr Expr
          deriving Show

data Ty = TBool 
        | TNum 
        | TFun Ty Ty
        | TList Ty
        deriving (Show, Eq)

data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd
           | TokenSub
           | TokenMul
           | TokenDiv
           | TokenAnd
           | TokenOr
           | TokenNot
           | TokenGreater
           | TokenSmaller
           | TokenEqual
           | TokenIf 
           | TokenThen 
           | TokenElse
           | TokenVar String 
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet 
           | TokenEq 
           | TokenIn
           | TokenColon
           | TokenTyBoolean 
           | TokenTyNumber
           | TokenTyList
           | TokenLSqBracket
           | TokenRSqBracket
           | TokenComma
           | TokenListConcat
           | TokenFor
           | TokenRange
           deriving (Show, Eq)

isSymb :: Char -> Bool 
isSymb c = c `elem` "!+-*/&|><\\->=:."

lexer :: String -> [Token]
lexer [] = [] 
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('[':cs) = TokenLSqBracket : lexer cs
lexer (']':cs) = TokenRSqBracket : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isSymb c = lexSymbol (c:cs)
             | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of 
                 ("+", rest)  -> TokenAdd : lexer rest 
                 ("++", rest)  -> TokenListConcat : lexer rest 
                 ("-", rest)  -> TokenSub : lexer rest 
                 ("*", rest)  -> TokenMul : lexer rest 
                 ("/", rest)  -> TokenDiv : lexer rest 
                 ("&&", rest) -> TokenAnd : lexer rest 
                 ("||", rest) -> TokenOr : lexer rest
                 ("!", rest) -> TokenNot : lexer rest
                 (">", rest) -> TokenGreater : lexer rest
                 ("<", rest) -> TokenSmaller : lexer rest
                 ("==", rest) -> TokenEqual : lexer rest
                 ("\\", rest) -> TokenLam : lexer rest 
                 ("->", rest) -> TokenArrow : lexer rest 
                 ("=", rest)  -> TokenEq : lexer rest 
                 (":", rest)  -> TokenColon : lexer rest 
                 ("..", rest) -> TokenRange : lexer rest 
                 _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest) -> TokenIf : lexer rest 
             ("then", rest) -> TokenThen : lexer rest 
             ("else", rest) -> TokenElse : lexer rest 
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenTyNumber : lexer rest 
             ("Bool", rest) -> TokenTyBoolean : lexer rest 
             ("List", rest) -> TokenTyList : lexer rest 
             ("for", rest) -> TokenFor : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 
