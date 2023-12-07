module Interpreter where 

import Lexer 
import Parser
import TypeChecker
import ListUtils

isValue :: Expr -> Bool 
isValue BTrue = True 
isValue BFalse = True
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue (List _) = True
isValue _ = False 

subst :: String -> Expr -> Expr -> Expr 
subst x n (Var v) = if (x == v) then n else (Var v)
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (Div e1 e2) = Div (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Not e) = Not (subst x n e)
subst x n (Greater e1 e2) = Greater (subst x n e1) (subst x n e2)
subst x n (Smaller e1 e2) = Smaller (subst x n e1) (subst x n e2)
subst x n (Equal e1 e2) = Equal (subst x n e1) (subst x n e2)
subst x n (ListConcat e1 e2) = ListConcat (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Paren e) = Paren (subst x n e)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (List es) = List (map (subst x n) es)
subst x n (Range e1 e2) = Range (subst x n e1) (subst x n e2)
subst x n (ListComp e v l) = ListComp (subst x n e) v (subst x n l)
subst x n e = e 

step :: Expr -> Expr
step (Add (List l1) (List l2)) = sumLists (evalList (List l1)) (evalList (List l2))
step (Add (Num n1) (Num n2)) = Num (n1 + n2)

step (Add (List l1) e) = Add (List l1) (step e)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2

step (Sub (List l1) (List l2)) = subLists (evalList (List l1)) (evalList (List l2))
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (List l1) e) = Sub (List l1) (step e)
step (Sub (Num n) e) = Sub (Num n) (step e)
step (Sub e1 e2) = Sub (step e1) e2

step (Mul (List l) (Num n)) = multiplyByScalar (evalList (List l)) (Num n)
step (Mul (Num n) (List l)) = multiplyByScalar (evalList (List l)) (Num n)
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)

step (Mul (List l1) e) = Mul (List l1) (step e)
step (Mul (Num n) e) = Mul (Num n) (step e)
step (Mul e1 e2) = Mul (step e1) e2

step (Div (Num n1) (Num n2)) = Num (n1 `div` n2)
step (Div (Num n) e) = Div (Num n) (step e)
step (Div e1 e2) = Div (step e1) e2

step (And BFalse _) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 

step (Or BFalse BFalse) = BFalse 
step (Or BTrue _) = BTrue
step (Or _ BTrue) = BTrue
step (Or e1 e2) = Or (step e1) (step e2)
step BTrue = BTrue
step BFalse = BFalse

step (Not BFalse) = BTrue 
step (Not BTrue) = BFalse
step (Not e1) = Not (step e1)

step (Greater (Num n1) (Num n2)) = if (n1 > n2) then BTrue else BFalse
step (Greater (Num n) e) = Greater (Num n) (step e)
step (Greater e1 e2) = Greater (step e1) e2

step (Smaller (Num n1) (Num n2)) =  if (n1 < n2) then BTrue else BFalse
step (Smaller (Num n) e) = Smaller (Num n) (step e)
step (Smaller e1 e2) = Smaller (step e1) e2

step (Equal (Num n1) (Num n2)) = if (n1 == n2) then BTrue else BFalse
step (Equal (Num n) e) = Equal (Num n) (step e)
step (Equal e1 e2) = Equal (step e1) e2

step (ListConcat (List l1) (List l2)) = concatLists (evalList (List l1)) (evalList (List l2))
step (ListConcat (List l) e) = ListConcat (List l) (step e)
step (ListConcat e1 e2) = ListConcat (step e1) e2

step (If BFalse e1 e2) = e2 
step (If BTrue e1 e2) = e1 
step (If e e1 e2) = If (step e) e1 e2 

step (Paren e) = e

step (App (Lam x t b) e2) | isValue e2 = subst x e2 b 
                          | otherwise = (App (Lam x t b) (step e2))
step (App e1 e2) = App (step e1) e2

step (Let v e1 e2) | isValue e1 = subst v e1 e2 
                   | otherwise = Let v (step e1) e2

step (Range (Num n1) (Num n2)) = List [Num x | x <- [n1..n2]]
step (Range (Num n) e) = Range (Num n) (step e)
step (Range e1 e2) = Range (step e1) e2

step (ListComp exp var (List l)) = List [eval (subst var x exp) | x <- listToHaskellList (evalList (List l))]
step (ListComp exp var (Range e1 e2)) = List [eval (subst var x exp) | x <- listToHaskellList (eval (Range e1 e2))]
step (ListComp exp var (ListComp e v l)) = List [eval (subst var x exp) | x <- listToHaskellList (eval (ListComp e v l))]

step e = error (show e)


evalList :: Expr -> Expr
evalList (List es) = List (map eval es)


eval :: Expr -> Expr 
eval BTrue = BTrue 
eval BFalse = BFalse
eval (Num n) = Num n 
eval (Lam v e1 e2) = Lam v e1 e2
eval (List es) = evalList (List es)
eval e = eval (step e)