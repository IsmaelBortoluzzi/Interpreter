module ListUtils where 

import Lexer


numToInt :: Expr -> Int
numToInt (Num n) = n
numToInt e = error (show e)

numNegToInt :: Expr -> Int
numNegToInt (Num n) = -n
numNegToInt e = error (show e)


intToNum :: Int -> Expr
intToNum n = Num n


sumLists :: Expr -> Expr -> Expr
sumLists (List l1) (List l2) = Num ((sum $ map numToInt l1) + (sum $ map numToInt l2))


subLists :: Expr -> Expr -> Expr
subLists (List l1) (List l2) = Num ((sum $ map numNegToInt l1) + (sum $ map numNegToInt l2))


multiplyByScalar :: Expr -> Expr -> Expr
multiplyByScalar (List l) (Num n) = List (map intToNum $ map (*n) $ map numToInt l)