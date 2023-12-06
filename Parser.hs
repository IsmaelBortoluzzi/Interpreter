{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,434) ([8256,4814,8196,0,0,0,0,63488,23039,1154,57860,16684,0,0,0,0,0,16512,9628,8,0,0,0,32,4096,45960,260,0,8,1024,11490,65,32766,41110,1,0,32,0,16,65472,5839,36,0,256,65520,1207,61449,56,1024,0,0,512,38513,32,14465,4171,16512,9628,16392,52768,1042,4128,2407,4098,45960,260,50184,33369,1024,11490,65,28930,8342,33024,19256,16,0,0,1920,0,49184,3,4096,480,0,61448,61,1024,7800,0,2,0,256,0,32768,3072,0,64,6,8192,4128,2407,2,32768,112,0,0,1024,11490,65,0,0,33024,19256,16,0,0,65472,13007,36,32768,0,0,28800,0,0,0,0,0,0,0,32,49151,36939,16512,9628,8,0,450,0,128,4096,45960,260,50184,33369,0,0,0,0,0,0,2048,7,0,4096,0,0,0,0,0,0,256,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'>'","'<'","\"==\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","List","':'","'['","']'","','","\"++\"","%eof"]
        bit_start = st * 39
        bit_end = (st + 1) * 39
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..38]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (14) = happyShift action_4
action_0 (18) = happyShift action_5
action_0 (19) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (35) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_21
action_3 (9) = happyShift action_22
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_25
action_3 (13) = happyShift action_26
action_3 (14) = happyShift action_4
action_3 (15) = happyShift action_27
action_3 (16) = happyShift action_28
action_3 (17) = happyShift action_29
action_3 (18) = happyShift action_5
action_3 (19) = happyShift action_6
action_3 (20) = happyShift action_7
action_3 (23) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (29) = happyShift action_11
action_3 (35) = happyShift action_12
action_3 (38) = happyShift action_30
action_3 (39) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_2
action_4 (14) = happyShift action_4
action_4 (18) = happyShift action_5
action_4 (19) = happyShift action_6
action_4 (20) = happyShift action_7
action_4 (23) = happyShift action_8
action_4 (24) = happyShift action_9
action_4 (26) = happyShift action_10
action_4 (29) = happyShift action_11
action_4 (35) = happyShift action_12
action_4 (4) = happyGoto action_19
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (7) = happyShift action_2
action_7 (14) = happyShift action_4
action_7 (18) = happyShift action_5
action_7 (19) = happyShift action_6
action_7 (20) = happyShift action_7
action_7 (23) = happyShift action_8
action_7 (24) = happyShift action_9
action_7 (26) = happyShift action_10
action_7 (29) = happyShift action_11
action_7 (35) = happyShift action_12
action_7 (4) = happyGoto action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_15

action_9 (23) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (14) = happyShift action_4
action_10 (18) = happyShift action_5
action_10 (19) = happyShift action_6
action_10 (20) = happyShift action_7
action_10 (23) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (29) = happyShift action_11
action_10 (35) = happyShift action_12
action_10 (4) = happyGoto action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (23) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (14) = happyShift action_4
action_12 (18) = happyShift action_5
action_12 (19) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (23) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (35) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_14
action_12 _ = happyReduce_22

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_21
action_13 (9) = happyShift action_22
action_13 (10) = happyShift action_23
action_13 (11) = happyShift action_24
action_13 (12) = happyShift action_25
action_13 (13) = happyShift action_26
action_13 (14) = happyShift action_4
action_13 (15) = happyShift action_27
action_13 (16) = happyShift action_28
action_13 (17) = happyShift action_29
action_13 (18) = happyShift action_5
action_13 (19) = happyShift action_6
action_13 (20) = happyShift action_7
action_13 (23) = happyShift action_8
action_13 (24) = happyShift action_9
action_13 (26) = happyShift action_10
action_13 (29) = happyShift action_11
action_13 (35) = happyShift action_12
action_13 (37) = happyShift action_46
action_13 (38) = happyShift action_30
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_23

action_14 (36) = happyShift action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_44
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_21
action_16 (9) = happyShift action_22
action_16 (10) = happyShift action_23
action_16 (11) = happyShift action_24
action_16 (12) = happyShift action_25
action_16 (13) = happyShift action_26
action_16 (14) = happyShift action_4
action_16 (15) = happyShift action_27
action_16 (16) = happyShift action_28
action_16 (17) = happyShift action_29
action_16 (18) = happyShift action_5
action_16 (19) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (23) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (27) = happyShift action_43
action_16 (29) = happyShift action_11
action_16 (35) = happyShift action_12
action_16 (38) = happyShift action_30
action_16 (4) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (34) = happyShift action_42
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (8) = happyShift action_21
action_18 (9) = happyShift action_22
action_18 (10) = happyShift action_23
action_18 (11) = happyShift action_24
action_18 (12) = happyShift action_25
action_18 (13) = happyShift action_26
action_18 (14) = happyShift action_4
action_18 (15) = happyShift action_27
action_18 (16) = happyShift action_28
action_18 (17) = happyShift action_29
action_18 (18) = happyShift action_5
action_18 (19) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_41
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (35) = happyShift action_12
action_18 (38) = happyShift action_30
action_18 (4) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_21
action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (15) = happyShift action_27
action_19 (16) = happyShift action_28
action_19 (17) = happyShift action_29
action_19 (18) = happyShift action_5
action_19 (19) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (35) = happyShift action_12
action_19 (38) = happyShift action_30
action_19 (4) = happyGoto action_20
action_19 _ = happyReduce_10

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_21
action_20 (9) = happyShift action_22
action_20 (10) = happyShift action_23
action_20 (11) = happyShift action_24
action_20 (12) = happyShift action_25
action_20 (13) = happyShift action_26
action_20 (14) = happyShift action_4
action_20 (15) = happyShift action_27
action_20 (16) = happyShift action_28
action_20 (17) = happyShift action_29
action_20 (18) = happyShift action_5
action_20 (19) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (35) = happyShift action_12
action_20 (38) = happyShift action_30
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_17

action_21 (7) = happyShift action_2
action_21 (14) = happyShift action_4
action_21 (18) = happyShift action_5
action_21 (19) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (35) = happyShift action_12
action_21 (4) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (14) = happyShift action_4
action_22 (18) = happyShift action_5
action_22 (19) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (35) = happyShift action_12
action_22 (4) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (14) = happyShift action_4
action_23 (18) = happyShift action_5
action_23 (19) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (35) = happyShift action_12
action_23 (4) = happyGoto action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (14) = happyShift action_4
action_24 (18) = happyShift action_5
action_24 (19) = happyShift action_6
action_24 (20) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (35) = happyShift action_12
action_24 (4) = happyGoto action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (14) = happyShift action_4
action_25 (18) = happyShift action_5
action_25 (19) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (35) = happyShift action_12
action_25 (4) = happyGoto action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (14) = happyShift action_4
action_26 (18) = happyShift action_5
action_26 (19) = happyShift action_6
action_26 (20) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (35) = happyShift action_12
action_26 (4) = happyGoto action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (14) = happyShift action_4
action_27 (18) = happyShift action_5
action_27 (19) = happyShift action_6
action_27 (20) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (35) = happyShift action_12
action_27 (4) = happyGoto action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (14) = happyShift action_4
action_28 (18) = happyShift action_5
action_28 (19) = happyShift action_6
action_28 (20) = happyShift action_7
action_28 (23) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (35) = happyShift action_12
action_28 (4) = happyGoto action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (14) = happyShift action_4
action_29 (18) = happyShift action_5
action_29 (19) = happyShift action_6
action_29 (20) = happyShift action_7
action_29 (23) = happyShift action_8
action_29 (24) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (29) = happyShift action_11
action_29 (35) = happyShift action_12
action_29 (4) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (14) = happyShift action_4
action_30 (18) = happyShift action_5
action_30 (19) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (23) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (35) = happyShift action_12
action_30 (4) = happyGoto action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (18) = happyShift action_5
action_31 (19) = happyShift action_6
action_31 (20) = happyShift action_7
action_31 (23) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (35) = happyShift action_12
action_31 (4) = happyGoto action_20
action_31 _ = happyReduce_21

action_32 (7) = happyShift action_2
action_32 (8) = happyShift action_21
action_32 (9) = happyShift action_22
action_32 (10) = happyShift action_23
action_32 (11) = happyShift action_24
action_32 (15) = happyFail []
action_32 (16) = happyFail []
action_32 (17) = happyFail []
action_32 (18) = happyShift action_5
action_32 (19) = happyShift action_6
action_32 (20) = happyShift action_7
action_32 (23) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (29) = happyShift action_11
action_32 (35) = happyShift action_12
action_32 (38) = happyShift action_30
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_13

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_21
action_33 (9) = happyShift action_22
action_33 (10) = happyShift action_23
action_33 (11) = happyShift action_24
action_33 (15) = happyFail []
action_33 (16) = happyFail []
action_33 (17) = happyFail []
action_33 (18) = happyShift action_5
action_33 (19) = happyShift action_6
action_33 (20) = happyShift action_7
action_33 (23) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (29) = happyShift action_11
action_33 (35) = happyShift action_12
action_33 (38) = happyShift action_30
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_12

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_21
action_34 (9) = happyShift action_22
action_34 (10) = happyShift action_23
action_34 (11) = happyShift action_24
action_34 (15) = happyFail []
action_34 (16) = happyFail []
action_34 (17) = happyFail []
action_34 (18) = happyShift action_5
action_34 (19) = happyShift action_6
action_34 (20) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (35) = happyShift action_12
action_34 (38) = happyShift action_30
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_11

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_21
action_35 (9) = happyShift action_22
action_35 (10) = happyShift action_23
action_35 (11) = happyShift action_24
action_35 (12) = happyShift action_25
action_35 (14) = happyShift action_4
action_35 (15) = happyShift action_27
action_35 (16) = happyShift action_28
action_35 (17) = happyShift action_29
action_35 (18) = happyShift action_5
action_35 (19) = happyShift action_6
action_35 (20) = happyShift action_7
action_35 (23) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (35) = happyShift action_12
action_35 (38) = happyShift action_30
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_9

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_21
action_36 (9) = happyShift action_22
action_36 (10) = happyShift action_23
action_36 (11) = happyShift action_24
action_36 (14) = happyShift action_4
action_36 (15) = happyShift action_27
action_36 (16) = happyShift action_28
action_36 (17) = happyShift action_29
action_36 (18) = happyShift action_5
action_36 (19) = happyShift action_6
action_36 (20) = happyShift action_7
action_36 (23) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (35) = happyShift action_12
action_36 (38) = happyShift action_30
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_8

action_37 (7) = happyShift action_2
action_37 (18) = happyShift action_5
action_37 (19) = happyShift action_6
action_37 (20) = happyShift action_7
action_37 (23) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (35) = happyShift action_12
action_37 (38) = happyShift action_30
action_37 (4) = happyGoto action_20
action_37 _ = happyReduce_7

action_38 (7) = happyShift action_2
action_38 (18) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (23) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (35) = happyShift action_12
action_38 (38) = happyShift action_30
action_38 (4) = happyGoto action_20
action_38 _ = happyReduce_6

action_39 (7) = happyShift action_2
action_39 (10) = happyShift action_23
action_39 (11) = happyShift action_24
action_39 (18) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (29) = happyShift action_11
action_39 (35) = happyShift action_12
action_39 (38) = happyShift action_30
action_39 (4) = happyGoto action_20
action_39 _ = happyReduce_5

action_40 (7) = happyShift action_2
action_40 (10) = happyShift action_23
action_40 (11) = happyShift action_24
action_40 (18) = happyShift action_5
action_40 (19) = happyShift action_6
action_40 (20) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (29) = happyShift action_11
action_40 (35) = happyShift action_12
action_40 (38) = happyShift action_30
action_40 (4) = happyGoto action_20
action_40 _ = happyReduce_4

action_41 (7) = happyShift action_2
action_41 (14) = happyShift action_4
action_41 (18) = happyShift action_5
action_41 (19) = happyShift action_6
action_41 (20) = happyShift action_7
action_41 (23) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (29) = happyShift action_11
action_41 (35) = happyShift action_12
action_41 (4) = happyGoto action_54
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (26) = happyShift action_50
action_42 (31) = happyShift action_51
action_42 (32) = happyShift action_52
action_42 (33) = happyShift action_53
action_42 (6) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_18

action_44 (7) = happyShift action_2
action_44 (14) = happyShift action_4
action_44 (18) = happyShift action_5
action_44 (19) = happyShift action_6
action_44 (20) = happyShift action_7
action_44 (23) = happyShift action_8
action_44 (24) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (29) = happyShift action_11
action_44 (35) = happyShift action_12
action_44 (4) = happyGoto action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_20

action_46 (7) = happyShift action_2
action_46 (14) = happyShift action_4
action_46 (18) = happyShift action_5
action_46 (19) = happyShift action_6
action_46 (20) = happyShift action_7
action_46 (23) = happyShift action_8
action_46 (24) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (35) = happyShift action_12
action_46 (4) = happyGoto action_13
action_46 (5) = happyGoto action_47
action_46 _ = happyReduce_22

action_47 _ = happyReduce_24

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_21
action_48 (9) = happyShift action_22
action_48 (10) = happyShift action_23
action_48 (11) = happyShift action_24
action_48 (12) = happyShift action_25
action_48 (13) = happyShift action_26
action_48 (14) = happyShift action_4
action_48 (15) = happyShift action_27
action_48 (16) = happyShift action_28
action_48 (17) = happyShift action_29
action_48 (18) = happyShift action_5
action_48 (19) = happyShift action_6
action_48 (20) = happyShift action_7
action_48 (23) = happyShift action_8
action_48 (24) = happyShift action_9
action_48 (26) = happyShift action_10
action_48 (29) = happyShift action_11
action_48 (30) = happyShift action_59
action_48 (35) = happyShift action_12
action_48 (38) = happyShift action_30
action_48 (4) = happyGoto action_20
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (25) = happyShift action_58
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (26) = happyShift action_50
action_50 (31) = happyShift action_51
action_50 (32) = happyShift action_52
action_50 (33) = happyShift action_53
action_50 (6) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_25

action_52 _ = happyReduce_26

action_53 (35) = happyShift action_56
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_2
action_54 (8) = happyShift action_21
action_54 (9) = happyShift action_22
action_54 (10) = happyShift action_23
action_54 (11) = happyShift action_24
action_54 (12) = happyShift action_25
action_54 (13) = happyShift action_26
action_54 (14) = happyShift action_4
action_54 (15) = happyShift action_27
action_54 (16) = happyShift action_28
action_54 (17) = happyShift action_29
action_54 (18) = happyShift action_5
action_54 (19) = happyShift action_6
action_54 (20) = happyShift action_7
action_54 (22) = happyShift action_55
action_54 (23) = happyShift action_8
action_54 (24) = happyShift action_9
action_54 (26) = happyShift action_10
action_54 (29) = happyShift action_11
action_54 (35) = happyShift action_12
action_54 (38) = happyShift action_30
action_54 (4) = happyGoto action_20
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_2
action_55 (14) = happyShift action_4
action_55 (18) = happyShift action_5
action_55 (19) = happyShift action_6
action_55 (20) = happyShift action_7
action_55 (23) = happyShift action_8
action_55 (24) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (29) = happyShift action_11
action_55 (35) = happyShift action_12
action_55 (4) = happyGoto action_64
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (26) = happyShift action_50
action_56 (31) = happyShift action_51
action_56 (32) = happyShift action_52
action_56 (33) = happyShift action_53
action_56 (6) = happyGoto action_63
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (25) = happyShift action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_2
action_58 (14) = happyShift action_4
action_58 (18) = happyShift action_5
action_58 (19) = happyShift action_6
action_58 (20) = happyShift action_7
action_58 (23) = happyShift action_8
action_58 (24) = happyShift action_9
action_58 (26) = happyShift action_10
action_58 (29) = happyShift action_11
action_58 (35) = happyShift action_12
action_58 (4) = happyGoto action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_2
action_59 (14) = happyShift action_4
action_59 (18) = happyShift action_5
action_59 (19) = happyShift action_6
action_59 (20) = happyShift action_7
action_59 (23) = happyShift action_8
action_59 (24) = happyShift action_9
action_59 (26) = happyShift action_10
action_59 (29) = happyShift action_11
action_59 (35) = happyShift action_12
action_59 (4) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_2
action_60 (8) = happyShift action_21
action_60 (9) = happyShift action_22
action_60 (10) = happyShift action_23
action_60 (11) = happyShift action_24
action_60 (12) = happyShift action_25
action_60 (13) = happyShift action_26
action_60 (14) = happyShift action_4
action_60 (15) = happyShift action_27
action_60 (16) = happyShift action_28
action_60 (17) = happyShift action_29
action_60 (18) = happyShift action_5
action_60 (19) = happyShift action_6
action_60 (20) = happyShift action_7
action_60 (23) = happyShift action_8
action_60 (24) = happyShift action_9
action_60 (26) = happyShift action_10
action_60 (29) = happyShift action_11
action_60 (35) = happyShift action_12
action_60 (38) = happyShift action_30
action_60 (4) = happyGoto action_20
action_60 _ = happyReduce_19

action_61 (7) = happyShift action_2
action_61 (8) = happyShift action_21
action_61 (9) = happyShift action_22
action_61 (10) = happyShift action_23
action_61 (11) = happyShift action_24
action_61 (12) = happyShift action_25
action_61 (13) = happyShift action_26
action_61 (14) = happyShift action_4
action_61 (15) = happyShift action_27
action_61 (16) = happyShift action_28
action_61 (17) = happyShift action_29
action_61 (18) = happyShift action_5
action_61 (19) = happyShift action_6
action_61 (20) = happyShift action_7
action_61 (23) = happyShift action_8
action_61 (24) = happyShift action_9
action_61 (26) = happyShift action_10
action_61 (29) = happyShift action_11
action_61 (35) = happyShift action_12
action_61 (38) = happyShift action_30
action_61 (4) = happyGoto action_20
action_61 _ = happyReduce_16

action_62 (26) = happyShift action_50
action_62 (31) = happyShift action_51
action_62 (32) = happyShift action_52
action_62 (33) = happyShift action_53
action_62 (6) = happyGoto action_66
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (36) = happyShift action_65
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_2
action_64 (8) = happyShift action_21
action_64 (9) = happyShift action_22
action_64 (10) = happyShift action_23
action_64 (11) = happyShift action_24
action_64 (12) = happyShift action_25
action_64 (13) = happyShift action_26
action_64 (14) = happyShift action_4
action_64 (15) = happyShift action_27
action_64 (16) = happyShift action_28
action_64 (17) = happyShift action_29
action_64 (18) = happyShift action_5
action_64 (19) = happyShift action_6
action_64 (20) = happyShift action_7
action_64 (23) = happyShift action_8
action_64 (24) = happyShift action_9
action_64 (26) = happyShift action_10
action_64 (29) = happyShift action_11
action_64 (35) = happyShift action_12
action_64 (38) = happyShift action_30
action_64 (4) = happyGoto action_20
action_64 _ = happyReduce_14

action_65 _ = happyReduce_28

action_66 (27) = happyShift action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_27

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Smaller happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ListConcat happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_0  5 happyReduction_22
happyReduction_22  =  HappyAbsSyn5
		 ([]
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  6 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_27 = happyReduce 5 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenMul -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenGreater -> cont 15;
	TokenSmaller -> cont 16;
	TokenEqual -> cont 17;
	TokenTrue -> cont 18;
	TokenFalse -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenVar happy_dollar_dollar -> cont 23;
	TokenLam -> cont 24;
	TokenArrow -> cont 25;
	TokenLParen -> cont 26;
	TokenRParen -> cont 27;
	TokenEq -> cont 28;
	TokenLet -> cont 29;
	TokenIn -> cont 30;
	TokenTyBoolean -> cont 31;
	TokenTyNumber -> cont 32;
	TokenTyList -> cont 33;
	TokenColon -> cont 34;
	TokenLSqBracket -> cont 35;
	TokenRSqBracket -> cont 36;
	TokenComma -> cont 37;
	TokenListConcat -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
