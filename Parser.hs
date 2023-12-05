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
happyExpList = Happy_Data_Array.listArray (0,362) ([8256,4814,4100,0,0,0,0,65280,19263,16400,52768,1042,0,0,0,0,0,14465,4171,0,0,0,4096,0,57860,16684,0,256,16384,52768,1042,65520,1203,5,0,128,0,32,65472,5839,4,0,128,65532,16685,7680,7,0,0,0,34832,1203,1025,11490,65,14465,4171,8256,4814,4100,45960,260,57860,16684,33024,19256,16400,52768,1042,34832,1203,30721,0,0,30,0,1920,0,57344,123,0,7800,0,0,0,0,0,0,384,0,24576,0,0,14465,4171,0,49664,1,0,0,57860,16684,0,0,16384,52768,1042,0,0,64512,11519,67,0,4,0,49664,1,0,0,0,0,0,0,49168,61439,1042,34832,1203,1,8192,28,0,4,8256,4814,4100,45960,260,0,0,0,0,0,0,450,0,0,2,0,0,0,0,0,1024,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'>'","'<'","\"==\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","List","':'","'['","']'","','","%eof"]
        bit_start = st * 38
        bit_end = (st + 1) * 38
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..37]
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
action_3 (38) = happyAccept
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
action_12 _ = happyReduce_21

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
action_13 (37) = happyShift action_44
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_22

action_14 (36) = happyShift action_43
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_42
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
action_16 (27) = happyShift action_41
action_16 (29) = happyShift action_11
action_16 (35) = happyShift action_12
action_16 (4) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (34) = happyShift action_40
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
action_18 (21) = happyShift action_39
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (35) = happyShift action_12
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
action_21 (4) = happyGoto action_38
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
action_22 (4) = happyGoto action_37
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
action_23 (4) = happyGoto action_36
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
action_24 (4) = happyGoto action_35
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
action_25 (4) = happyGoto action_34
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
action_26 (4) = happyGoto action_33
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
action_27 (4) = happyGoto action_32
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
action_28 (4) = happyGoto action_31
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
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_21
action_30 (9) = happyShift action_22
action_30 (10) = happyShift action_23
action_30 (11) = happyShift action_24
action_30 (15) = happyFail []
action_30 (16) = happyFail []
action_30 (17) = happyFail []
action_30 (18) = happyShift action_5
action_30 (19) = happyShift action_6
action_30 (20) = happyShift action_7
action_30 (23) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (35) = happyShift action_12
action_30 (4) = happyGoto action_20
action_30 _ = happyReduce_13

action_31 (7) = happyShift action_2
action_31 (8) = happyShift action_21
action_31 (9) = happyShift action_22
action_31 (10) = happyShift action_23
action_31 (11) = happyShift action_24
action_31 (15) = happyFail []
action_31 (16) = happyFail []
action_31 (17) = happyFail []
action_31 (18) = happyShift action_5
action_31 (19) = happyShift action_6
action_31 (20) = happyShift action_7
action_31 (23) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (35) = happyShift action_12
action_31 (4) = happyGoto action_20
action_31 _ = happyReduce_12

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
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_11

action_33 (7) = happyShift action_2
action_33 (8) = happyShift action_21
action_33 (9) = happyShift action_22
action_33 (10) = happyShift action_23
action_33 (11) = happyShift action_24
action_33 (12) = happyShift action_25
action_33 (14) = happyShift action_4
action_33 (15) = happyShift action_27
action_33 (16) = happyShift action_28
action_33 (17) = happyShift action_29
action_33 (18) = happyShift action_5
action_33 (19) = happyShift action_6
action_33 (20) = happyShift action_7
action_33 (23) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (29) = happyShift action_11
action_33 (35) = happyShift action_12
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_9

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_21
action_34 (9) = happyShift action_22
action_34 (10) = happyShift action_23
action_34 (11) = happyShift action_24
action_34 (14) = happyShift action_4
action_34 (15) = happyShift action_27
action_34 (16) = happyShift action_28
action_34 (17) = happyShift action_29
action_34 (18) = happyShift action_5
action_34 (19) = happyShift action_6
action_34 (20) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (35) = happyShift action_12
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_8

action_35 (7) = happyShift action_2
action_35 (18) = happyShift action_5
action_35 (19) = happyShift action_6
action_35 (20) = happyShift action_7
action_35 (23) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (35) = happyShift action_12
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_7

action_36 (7) = happyShift action_2
action_36 (18) = happyShift action_5
action_36 (19) = happyShift action_6
action_36 (20) = happyShift action_7
action_36 (23) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (35) = happyShift action_12
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_6

action_37 (7) = happyShift action_2
action_37 (10) = happyShift action_23
action_37 (11) = happyShift action_24
action_37 (18) = happyShift action_5
action_37 (19) = happyShift action_6
action_37 (20) = happyShift action_7
action_37 (23) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (35) = happyShift action_12
action_37 (4) = happyGoto action_20
action_37 _ = happyReduce_5

action_38 (7) = happyShift action_2
action_38 (10) = happyShift action_23
action_38 (11) = happyShift action_24
action_38 (18) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (20) = happyShift action_7
action_38 (23) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (35) = happyShift action_12
action_38 (4) = happyGoto action_20
action_38 _ = happyReduce_4

action_39 (7) = happyShift action_2
action_39 (14) = happyShift action_4
action_39 (18) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (20) = happyShift action_7
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (29) = happyShift action_11
action_39 (35) = happyShift action_12
action_39 (4) = happyGoto action_52
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (26) = happyShift action_48
action_40 (31) = happyShift action_49
action_40 (32) = happyShift action_50
action_40 (33) = happyShift action_51
action_40 (6) = happyGoto action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 (7) = happyShift action_2
action_42 (14) = happyShift action_4
action_42 (18) = happyShift action_5
action_42 (19) = happyShift action_6
action_42 (20) = happyShift action_7
action_42 (23) = happyShift action_8
action_42 (24) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (29) = happyShift action_11
action_42 (35) = happyShift action_12
action_42 (4) = happyGoto action_46
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_20

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
action_44 (4) = happyGoto action_13
action_44 (5) = happyGoto action_45
action_44 _ = happyReduce_21

action_45 _ = happyReduce_23

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_21
action_46 (9) = happyShift action_22
action_46 (10) = happyShift action_23
action_46 (11) = happyShift action_24
action_46 (12) = happyShift action_25
action_46 (13) = happyShift action_26
action_46 (14) = happyShift action_4
action_46 (15) = happyShift action_27
action_46 (16) = happyShift action_28
action_46 (17) = happyShift action_29
action_46 (18) = happyShift action_5
action_46 (19) = happyShift action_6
action_46 (20) = happyShift action_7
action_46 (23) = happyShift action_8
action_46 (24) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (30) = happyShift action_57
action_46 (35) = happyShift action_12
action_46 (4) = happyGoto action_20
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (25) = happyShift action_56
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (26) = happyShift action_48
action_48 (31) = happyShift action_49
action_48 (32) = happyShift action_50
action_48 (33) = happyShift action_51
action_48 (6) = happyGoto action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_24

action_50 _ = happyReduce_25

action_51 (35) = happyShift action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_2
action_52 (8) = happyShift action_21
action_52 (9) = happyShift action_22
action_52 (10) = happyShift action_23
action_52 (11) = happyShift action_24
action_52 (12) = happyShift action_25
action_52 (13) = happyShift action_26
action_52 (14) = happyShift action_4
action_52 (15) = happyShift action_27
action_52 (16) = happyShift action_28
action_52 (17) = happyShift action_29
action_52 (18) = happyShift action_5
action_52 (19) = happyShift action_6
action_52 (20) = happyShift action_7
action_52 (22) = happyShift action_53
action_52 (23) = happyShift action_8
action_52 (24) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (35) = happyShift action_12
action_52 (4) = happyGoto action_20
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_2
action_53 (14) = happyShift action_4
action_53 (18) = happyShift action_5
action_53 (19) = happyShift action_6
action_53 (20) = happyShift action_7
action_53 (23) = happyShift action_8
action_53 (24) = happyShift action_9
action_53 (26) = happyShift action_10
action_53 (29) = happyShift action_11
action_53 (35) = happyShift action_12
action_53 (4) = happyGoto action_62
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (26) = happyShift action_48
action_54 (31) = happyShift action_49
action_54 (32) = happyShift action_50
action_54 (33) = happyShift action_51
action_54 (6) = happyGoto action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (25) = happyShift action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_2
action_56 (14) = happyShift action_4
action_56 (18) = happyShift action_5
action_56 (19) = happyShift action_6
action_56 (20) = happyShift action_7
action_56 (23) = happyShift action_8
action_56 (24) = happyShift action_9
action_56 (26) = happyShift action_10
action_56 (29) = happyShift action_11
action_56 (35) = happyShift action_12
action_56 (4) = happyGoto action_59
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_2
action_57 (14) = happyShift action_4
action_57 (18) = happyShift action_5
action_57 (19) = happyShift action_6
action_57 (20) = happyShift action_7
action_57 (23) = happyShift action_8
action_57 (24) = happyShift action_9
action_57 (26) = happyShift action_10
action_57 (29) = happyShift action_11
action_57 (35) = happyShift action_12
action_57 (4) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_2
action_58 (8) = happyShift action_21
action_58 (9) = happyShift action_22
action_58 (10) = happyShift action_23
action_58 (11) = happyShift action_24
action_58 (12) = happyShift action_25
action_58 (13) = happyShift action_26
action_58 (14) = happyShift action_4
action_58 (15) = happyShift action_27
action_58 (16) = happyShift action_28
action_58 (17) = happyShift action_29
action_58 (18) = happyShift action_5
action_58 (19) = happyShift action_6
action_58 (20) = happyShift action_7
action_58 (23) = happyShift action_8
action_58 (24) = happyShift action_9
action_58 (26) = happyShift action_10
action_58 (29) = happyShift action_11
action_58 (35) = happyShift action_12
action_58 (4) = happyGoto action_20
action_58 _ = happyReduce_19

action_59 (7) = happyShift action_2
action_59 (8) = happyShift action_21
action_59 (9) = happyShift action_22
action_59 (10) = happyShift action_23
action_59 (11) = happyShift action_24
action_59 (12) = happyShift action_25
action_59 (13) = happyShift action_26
action_59 (14) = happyShift action_4
action_59 (15) = happyShift action_27
action_59 (16) = happyShift action_28
action_59 (17) = happyShift action_29
action_59 (18) = happyShift action_5
action_59 (19) = happyShift action_6
action_59 (20) = happyShift action_7
action_59 (23) = happyShift action_8
action_59 (24) = happyShift action_9
action_59 (26) = happyShift action_10
action_59 (29) = happyShift action_11
action_59 (35) = happyShift action_12
action_59 (4) = happyGoto action_20
action_59 _ = happyReduce_16

action_60 (26) = happyShift action_48
action_60 (31) = happyShift action_49
action_60 (32) = happyShift action_50
action_60 (33) = happyShift action_51
action_60 (6) = happyGoto action_64
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (36) = happyShift action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_2
action_62 (8) = happyShift action_21
action_62 (9) = happyShift action_22
action_62 (10) = happyShift action_23
action_62 (11) = happyShift action_24
action_62 (12) = happyShift action_25
action_62 (13) = happyShift action_26
action_62 (14) = happyShift action_4
action_62 (15) = happyShift action_27
action_62 (16) = happyShift action_28
action_62 (17) = happyShift action_29
action_62 (18) = happyShift action_5
action_62 (19) = happyShift action_6
action_62 (20) = happyShift action_7
action_62 (23) = happyShift action_8
action_62 (24) = happyShift action_9
action_62 (26) = happyShift action_10
action_62 (29) = happyShift action_11
action_62 (35) = happyShift action_12
action_62 (4) = happyGoto action_20
action_62 _ = happyReduce_14

action_63 _ = happyReduce_27

action_64 (27) = happyShift action_65
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_26

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

happyReduce_21 = happySpecReduce_0  5 happyReduction_21
happyReduction_21  =  HappyAbsSyn5
		 ([]
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_25 = happySpecReduce_1  6 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_26 = happyReduce 5 6 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 6 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
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
