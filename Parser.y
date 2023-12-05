{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 


%left "||"
%left "&&"
%left '!'
%nonassoc '<' '>' "=="
%left '+' '-'
%left '*' '/'

%token 
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    '/'         { TokenDiv }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    '!'         { TokenNot }
    '>'         { TokenGreater }
    '<'         { TokenSmaller }
    "=="        { TokenEqual }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenTyBoolean }
    Num         { TokenTyNumber }
    List        { TokenTyList }
    ':'         { TokenColon }
    '['         { TokenLSqBracket }
    ']'         { TokenRSqBracket }
    ','         { TokenComma }

%%

Exp         : num                           { Num $1 }
            | true                          { BTrue }
            | false                         { BFalse }
            | Exp '+' Exp                   { Add $1 $3 }
            | Exp '-' Exp                   { Sub $1 $3 }
            | Exp '*' Exp                   { Mul $1 $3 }
            | Exp '/' Exp                   { Div $1 $3 }
            | Exp "&&" Exp                  { And $1 $3 }
            | Exp "||" Exp                  { Or $1 $3 }
            | '!' Exp                       { Not $2 }
            | Exp '>' Exp                   { Greater $1 $3 }
            | Exp '<' Exp                   { Smaller $1 $3 }
            | Exp "==" Exp                  { Equal $1 $3 }
            | if Exp then Exp else Exp      { If $2 $4 $6 }
            | var                           { Var $1 }
            | '\\' var ':' Type "->" Exp    { Lam $2 $4 $6 }
            | Exp Exp                       { App $1 $2 }
            | '(' Exp ')'                   { Paren $2 }
            | let var '=' Exp in Exp        { Let $2 $4 $6 }
            | '[' ExpList ']'               { List $2 }


ExpList     : {- empty -}                   { [] }
            | Exp                           { [$1] }
            | Exp ',' ExpList               { $1 : $3 }


Type        : Bool                          { TBool }
            | Num                           { TNum }
            | '(' Type "->" Type ')'        { TFun $2 $4 }
            | List '[' Type ']'             { TList $3 }


{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}