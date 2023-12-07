{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,647) ([16512,9628,16,2,0,0,0,0,65504,2407,32868,40000,4133,0,0,0,0,0,8192,26384,1033,0,0,0,0,2,2048,22980,258,0,32,32768,40000,4133,65024,38527,1872,0,0,2,0,4,65408,11679,400,0,8192,63488,23551,6402,58304,0,32,0,0,512,38513,64,50184,601,8193,26384,1033,16512,9628,16,28930,16534,2048,22980,258,4128,2407,32772,40000,4133,512,38513,64,50184,601,8193,26384,1033,0,0,0,0,0,61440,0,2048,960,0,32,15,32768,31744,15,512,15600,0,8,0,8192,0,0,128,48,0,49154,0,2048,4128,2407,4,0,900,0,0,0,50184,601,1,0,0,0,128,0,28930,16534,63488,23039,7426,0,0,0,0,64,65024,38527,1601,0,32,0,0,225,0,0,0,0,0,0,0,256,65504,2423,32868,40000,4133,0,4096,14,0,32,8192,26384,1033,16512,9628,16,28930,16534,63488,23039,6402,0,0,32776,40000,4133,0,0,0,0,0,0,0,225,0,0,32,0,0,0,0,0,0,512,32768,40959,54309,1,0,128,0,0,8192,26384,1033,0,0,0,0,0,0,2048,0,0,0,0,0,64,512,38513,64,0,0,2,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","ListCompExp","Type","num","'+'","'-'","'*'","'/'","\"&&\"","\"||\"","'!'","'>'","'<'","\"==\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","List","for","':'","'['","']'","','","\"++\"","\"..\"","%eof"]
        bit_start = st * 42
        bit_end = (st + 1) * 42
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..41]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (8) = happyShift action_2
action_0 (15) = happyShift action_4
action_0 (19) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (37) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_21
action_3 (10) = happyShift action_22
action_3 (11) = happyShift action_23
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_4
action_3 (16) = happyShift action_27
action_3 (17) = happyShift action_28
action_3 (18) = happyShift action_29
action_3 (19) = happyShift action_5
action_3 (20) = happyShift action_6
action_3 (21) = happyShift action_7
action_3 (24) = happyShift action_8
action_3 (25) = happyShift action_9
action_3 (27) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (37) = happyShift action_12
action_3 (40) = happyShift action_30
action_3 (41) = happyShift action_31
action_3 (42) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyShift action_2
action_4 (15) = happyShift action_4
action_4 (19) = happyShift action_5
action_4 (20) = happyShift action_6
action_4 (21) = happyShift action_7
action_4 (24) = happyShift action_8
action_4 (25) = happyShift action_9
action_4 (27) = happyShift action_10
action_4 (30) = happyShift action_11
action_4 (37) = happyShift action_12
action_4 (4) = happyGoto action_19
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (8) = happyShift action_2
action_7 (15) = happyShift action_4
action_7 (19) = happyShift action_5
action_7 (20) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (24) = happyShift action_8
action_7 (25) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (30) = happyShift action_11
action_7 (37) = happyShift action_12
action_7 (4) = happyGoto action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_15

action_9 (24) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_2
action_10 (15) = happyShift action_4
action_10 (19) = happyShift action_5
action_10 (20) = happyShift action_6
action_10 (21) = happyShift action_7
action_10 (24) = happyShift action_8
action_10 (25) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (37) = happyShift action_12
action_10 (4) = happyGoto action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (24) = happyShift action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_2
action_12 (15) = happyShift action_4
action_12 (19) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (25) = happyShift action_9
action_12 (27) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (37) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_14
action_12 _ = happyReduce_24

action_13 (8) = happyShift action_2
action_13 (9) = happyShift action_21
action_13 (10) = happyShift action_22
action_13 (11) = happyShift action_23
action_13 (12) = happyShift action_24
action_13 (13) = happyShift action_25
action_13 (14) = happyShift action_26
action_13 (15) = happyShift action_4
action_13 (16) = happyShift action_27
action_13 (17) = happyShift action_28
action_13 (18) = happyShift action_29
action_13 (19) = happyShift action_5
action_13 (20) = happyShift action_6
action_13 (21) = happyShift action_7
action_13 (24) = happyShift action_8
action_13 (25) = happyShift action_9
action_13 (27) = happyShift action_10
action_13 (30) = happyShift action_11
action_13 (35) = happyShift action_48
action_13 (37) = happyShift action_12
action_13 (39) = happyShift action_49
action_13 (40) = happyShift action_30
action_13 (41) = happyShift action_31
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_25

action_14 (38) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (29) = happyShift action_46
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_2
action_16 (9) = happyShift action_21
action_16 (10) = happyShift action_22
action_16 (11) = happyShift action_23
action_16 (12) = happyShift action_24
action_16 (13) = happyShift action_25
action_16 (14) = happyShift action_26
action_16 (15) = happyShift action_4
action_16 (16) = happyShift action_27
action_16 (17) = happyShift action_28
action_16 (18) = happyShift action_29
action_16 (19) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (24) = happyShift action_8
action_16 (25) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (28) = happyShift action_45
action_16 (30) = happyShift action_11
action_16 (37) = happyShift action_12
action_16 (40) = happyShift action_30
action_16 (41) = happyShift action_31
action_16 (4) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (36) = happyShift action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_2
action_18 (9) = happyShift action_21
action_18 (10) = happyShift action_22
action_18 (11) = happyShift action_23
action_18 (12) = happyShift action_24
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_26
action_18 (15) = happyShift action_4
action_18 (16) = happyShift action_27
action_18 (17) = happyShift action_28
action_18 (18) = happyShift action_29
action_18 (19) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_43
action_18 (24) = happyShift action_8
action_18 (25) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (30) = happyShift action_11
action_18 (37) = happyShift action_12
action_18 (40) = happyShift action_30
action_18 (41) = happyShift action_31
action_18 (4) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_2
action_19 (9) = happyShift action_21
action_19 (10) = happyShift action_22
action_19 (11) = happyShift action_23
action_19 (12) = happyShift action_24
action_19 (16) = happyShift action_27
action_19 (17) = happyShift action_28
action_19 (18) = happyShift action_29
action_19 (19) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (24) = happyShift action_8
action_19 (25) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (37) = happyShift action_12
action_19 (40) = happyShift action_30
action_19 (41) = happyShift action_31
action_19 (4) = happyGoto action_20
action_19 _ = happyReduce_10

action_20 (8) = happyShift action_2
action_20 (9) = happyShift action_21
action_20 (10) = happyShift action_22
action_20 (11) = happyShift action_23
action_20 (12) = happyShift action_24
action_20 (13) = happyShift action_25
action_20 (14) = happyShift action_26
action_20 (15) = happyShift action_4
action_20 (16) = happyShift action_27
action_20 (17) = happyShift action_28
action_20 (18) = happyShift action_29
action_20 (19) = happyShift action_5
action_20 (20) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (25) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (37) = happyShift action_12
action_20 (40) = happyShift action_30
action_20 (41) = happyShift action_31
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_17

action_21 (8) = happyShift action_2
action_21 (15) = happyShift action_4
action_21 (19) = happyShift action_5
action_21 (20) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (25) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (37) = happyShift action_12
action_21 (4) = happyGoto action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_2
action_22 (15) = happyShift action_4
action_22 (19) = happyShift action_5
action_22 (20) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (25) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (37) = happyShift action_12
action_22 (4) = happyGoto action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_2
action_23 (15) = happyShift action_4
action_23 (19) = happyShift action_5
action_23 (20) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (25) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (37) = happyShift action_12
action_23 (4) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_2
action_24 (15) = happyShift action_4
action_24 (19) = happyShift action_5
action_24 (20) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (25) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (37) = happyShift action_12
action_24 (4) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_2
action_25 (15) = happyShift action_4
action_25 (19) = happyShift action_5
action_25 (20) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (24) = happyShift action_8
action_25 (25) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (37) = happyShift action_12
action_25 (4) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_2
action_26 (15) = happyShift action_4
action_26 (19) = happyShift action_5
action_26 (20) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (24) = happyShift action_8
action_26 (25) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (37) = happyShift action_12
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_2
action_27 (15) = happyShift action_4
action_27 (19) = happyShift action_5
action_27 (20) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (24) = happyShift action_8
action_27 (25) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (37) = happyShift action_12
action_27 (4) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_2
action_28 (15) = happyShift action_4
action_28 (19) = happyShift action_5
action_28 (20) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (24) = happyShift action_8
action_28 (25) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (37) = happyShift action_12
action_28 (4) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (8) = happyShift action_2
action_29 (15) = happyShift action_4
action_29 (19) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (25) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (37) = happyShift action_12
action_29 (4) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (8) = happyShift action_2
action_30 (15) = happyShift action_4
action_30 (19) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (25) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (37) = happyShift action_12
action_30 (4) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (8) = happyShift action_2
action_31 (15) = happyShift action_4
action_31 (19) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (37) = happyShift action_12
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (8) = happyShift action_2
action_32 (9) = happyShift action_21
action_32 (10) = happyShift action_22
action_32 (11) = happyShift action_23
action_32 (12) = happyShift action_24
action_32 (13) = happyShift action_25
action_32 (14) = happyShift action_26
action_32 (15) = happyShift action_4
action_32 (16) = happyShift action_27
action_32 (17) = happyShift action_28
action_32 (18) = happyShift action_29
action_32 (19) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (24) = happyShift action_8
action_32 (25) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (37) = happyShift action_12
action_32 (40) = happyShift action_30
action_32 (41) = happyShift action_31
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_20

action_33 (8) = happyShift action_2
action_33 (19) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (24) = happyShift action_8
action_33 (25) = happyShift action_9
action_33 (27) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (37) = happyShift action_12
action_33 (41) = happyShift action_31
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_21

action_34 (8) = happyShift action_2
action_34 (9) = happyShift action_21
action_34 (10) = happyShift action_22
action_34 (11) = happyShift action_23
action_34 (12) = happyShift action_24
action_34 (16) = happyFail []
action_34 (17) = happyFail []
action_34 (18) = happyFail []
action_34 (19) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (24) = happyShift action_8
action_34 (25) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (37) = happyShift action_12
action_34 (40) = happyShift action_30
action_34 (41) = happyShift action_31
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_13

action_35 (8) = happyShift action_2
action_35 (9) = happyShift action_21
action_35 (10) = happyShift action_22
action_35 (11) = happyShift action_23
action_35 (12) = happyShift action_24
action_35 (16) = happyFail []
action_35 (17) = happyFail []
action_35 (18) = happyFail []
action_35 (19) = happyShift action_5
action_35 (20) = happyShift action_6
action_35 (21) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (25) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (37) = happyShift action_12
action_35 (40) = happyShift action_30
action_35 (41) = happyShift action_31
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_12

action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_21
action_36 (10) = happyShift action_22
action_36 (11) = happyShift action_23
action_36 (12) = happyShift action_24
action_36 (16) = happyFail []
action_36 (17) = happyFail []
action_36 (18) = happyFail []
action_36 (19) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (25) = happyShift action_9
action_36 (27) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (37) = happyShift action_12
action_36 (40) = happyShift action_30
action_36 (41) = happyShift action_31
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_11

action_37 (8) = happyShift action_2
action_37 (9) = happyShift action_21
action_37 (10) = happyShift action_22
action_37 (11) = happyShift action_23
action_37 (12) = happyShift action_24
action_37 (13) = happyShift action_25
action_37 (15) = happyShift action_4
action_37 (16) = happyShift action_27
action_37 (17) = happyShift action_28
action_37 (18) = happyShift action_29
action_37 (19) = happyShift action_5
action_37 (20) = happyShift action_6
action_37 (21) = happyShift action_7
action_37 (24) = happyShift action_8
action_37 (25) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (37) = happyShift action_12
action_37 (40) = happyShift action_30
action_37 (41) = happyShift action_31
action_37 (4) = happyGoto action_20
action_37 _ = happyReduce_9

action_38 (8) = happyShift action_2
action_38 (9) = happyShift action_21
action_38 (10) = happyShift action_22
action_38 (11) = happyShift action_23
action_38 (12) = happyShift action_24
action_38 (15) = happyShift action_4
action_38 (16) = happyShift action_27
action_38 (17) = happyShift action_28
action_38 (18) = happyShift action_29
action_38 (19) = happyShift action_5
action_38 (20) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (25) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (37) = happyShift action_12
action_38 (40) = happyShift action_30
action_38 (41) = happyShift action_31
action_38 (4) = happyGoto action_20
action_38 _ = happyReduce_8

action_39 (8) = happyShift action_2
action_39 (19) = happyShift action_5
action_39 (20) = happyShift action_6
action_39 (21) = happyShift action_7
action_39 (24) = happyShift action_8
action_39 (25) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (30) = happyShift action_11
action_39 (37) = happyShift action_12
action_39 (40) = happyShift action_30
action_39 (41) = happyShift action_31
action_39 (4) = happyGoto action_20
action_39 _ = happyReduce_7

action_40 (8) = happyShift action_2
action_40 (19) = happyShift action_5
action_40 (20) = happyShift action_6
action_40 (21) = happyShift action_7
action_40 (24) = happyShift action_8
action_40 (25) = happyShift action_9
action_40 (27) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (37) = happyShift action_12
action_40 (40) = happyShift action_30
action_40 (41) = happyShift action_31
action_40 (4) = happyGoto action_20
action_40 _ = happyReduce_6

action_41 (8) = happyShift action_2
action_41 (11) = happyShift action_23
action_41 (12) = happyShift action_24
action_41 (19) = happyShift action_5
action_41 (20) = happyShift action_6
action_41 (21) = happyShift action_7
action_41 (24) = happyShift action_8
action_41 (25) = happyShift action_9
action_41 (27) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (37) = happyShift action_12
action_41 (40) = happyShift action_30
action_41 (41) = happyShift action_31
action_41 (4) = happyGoto action_20
action_41 _ = happyReduce_5

action_42 (8) = happyShift action_2
action_42 (11) = happyShift action_23
action_42 (12) = happyShift action_24
action_42 (19) = happyShift action_5
action_42 (20) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (24) = happyShift action_8
action_42 (25) = happyShift action_9
action_42 (27) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (37) = happyShift action_12
action_42 (40) = happyShift action_30
action_42 (41) = happyShift action_31
action_42 (4) = happyGoto action_20
action_42 _ = happyReduce_4

action_43 (8) = happyShift action_2
action_43 (15) = happyShift action_4
action_43 (19) = happyShift action_5
action_43 (20) = happyShift action_6
action_43 (21) = happyShift action_7
action_43 (24) = happyShift action_8
action_43 (25) = happyShift action_9
action_43 (27) = happyShift action_10
action_43 (30) = happyShift action_11
action_43 (37) = happyShift action_12
action_43 (4) = happyGoto action_59
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (27) = happyShift action_55
action_44 (32) = happyShift action_56
action_44 (33) = happyShift action_57
action_44 (34) = happyShift action_58
action_44 (7) = happyGoto action_54
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_18

action_46 (8) = happyShift action_2
action_46 (15) = happyShift action_4
action_46 (19) = happyShift action_5
action_46 (20) = happyShift action_6
action_46 (21) = happyShift action_7
action_46 (24) = happyShift action_8
action_46 (25) = happyShift action_9
action_46 (27) = happyShift action_10
action_46 (30) = happyShift action_11
action_46 (37) = happyShift action_12
action_46 (4) = happyGoto action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 (24) = happyShift action_52
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (8) = happyShift action_2
action_49 (15) = happyShift action_4
action_49 (19) = happyShift action_5
action_49 (20) = happyShift action_6
action_49 (21) = happyShift action_7
action_49 (24) = happyShift action_8
action_49 (25) = happyShift action_9
action_49 (27) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (37) = happyShift action_12
action_49 (4) = happyGoto action_50
action_49 (5) = happyGoto action_51
action_49 _ = happyReduce_24

action_50 (8) = happyShift action_2
action_50 (9) = happyShift action_21
action_50 (10) = happyShift action_22
action_50 (11) = happyShift action_23
action_50 (12) = happyShift action_24
action_50 (13) = happyShift action_25
action_50 (14) = happyShift action_26
action_50 (15) = happyShift action_4
action_50 (16) = happyShift action_27
action_50 (17) = happyShift action_28
action_50 (18) = happyShift action_29
action_50 (19) = happyShift action_5
action_50 (20) = happyShift action_6
action_50 (21) = happyShift action_7
action_50 (24) = happyShift action_8
action_50 (25) = happyShift action_9
action_50 (27) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (37) = happyShift action_12
action_50 (39) = happyShift action_49
action_50 (40) = happyShift action_30
action_50 (41) = happyShift action_31
action_50 (4) = happyGoto action_20
action_50 _ = happyReduce_25

action_51 _ = happyReduce_26

action_52 (31) = happyShift action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_2
action_53 (9) = happyShift action_21
action_53 (10) = happyShift action_22
action_53 (11) = happyShift action_23
action_53 (12) = happyShift action_24
action_53 (13) = happyShift action_25
action_53 (14) = happyShift action_26
action_53 (15) = happyShift action_4
action_53 (16) = happyShift action_27
action_53 (17) = happyShift action_28
action_53 (18) = happyShift action_29
action_53 (19) = happyShift action_5
action_53 (20) = happyShift action_6
action_53 (21) = happyShift action_7
action_53 (24) = happyShift action_8
action_53 (25) = happyShift action_9
action_53 (27) = happyShift action_10
action_53 (30) = happyShift action_11
action_53 (31) = happyShift action_64
action_53 (37) = happyShift action_12
action_53 (40) = happyShift action_30
action_53 (41) = happyShift action_31
action_53 (4) = happyGoto action_20
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (26) = happyShift action_63
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (27) = happyShift action_55
action_55 (32) = happyShift action_56
action_55 (33) = happyShift action_57
action_55 (34) = happyShift action_58
action_55 (7) = happyGoto action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_30

action_57 _ = happyReduce_31

action_58 (37) = happyShift action_61
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (8) = happyShift action_2
action_59 (9) = happyShift action_21
action_59 (10) = happyShift action_22
action_59 (11) = happyShift action_23
action_59 (12) = happyShift action_24
action_59 (13) = happyShift action_25
action_59 (14) = happyShift action_26
action_59 (15) = happyShift action_4
action_59 (16) = happyShift action_27
action_59 (17) = happyShift action_28
action_59 (18) = happyShift action_29
action_59 (19) = happyShift action_5
action_59 (20) = happyShift action_6
action_59 (21) = happyShift action_7
action_59 (23) = happyShift action_60
action_59 (24) = happyShift action_8
action_59 (25) = happyShift action_9
action_59 (27) = happyShift action_10
action_59 (30) = happyShift action_11
action_59 (37) = happyShift action_12
action_59 (40) = happyShift action_30
action_59 (41) = happyShift action_31
action_59 (4) = happyGoto action_20
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (8) = happyShift action_2
action_60 (15) = happyShift action_4
action_60 (19) = happyShift action_5
action_60 (20) = happyShift action_6
action_60 (21) = happyShift action_7
action_60 (24) = happyShift action_8
action_60 (25) = happyShift action_9
action_60 (27) = happyShift action_10
action_60 (30) = happyShift action_11
action_60 (37) = happyShift action_12
action_60 (4) = happyGoto action_73
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (27) = happyShift action_55
action_61 (32) = happyShift action_56
action_61 (33) = happyShift action_57
action_61 (34) = happyShift action_58
action_61 (7) = happyGoto action_72
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (26) = happyShift action_71
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (8) = happyShift action_2
action_63 (15) = happyShift action_4
action_63 (19) = happyShift action_5
action_63 (20) = happyShift action_6
action_63 (21) = happyShift action_7
action_63 (24) = happyShift action_8
action_63 (25) = happyShift action_9
action_63 (27) = happyShift action_10
action_63 (30) = happyShift action_11
action_63 (37) = happyShift action_12
action_63 (4) = happyGoto action_70
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (8) = happyShift action_2
action_64 (15) = happyShift action_4
action_64 (19) = happyShift action_5
action_64 (20) = happyShift action_6
action_64 (21) = happyShift action_7
action_64 (24) = happyShift action_8
action_64 (25) = happyShift action_9
action_64 (27) = happyShift action_10
action_64 (30) = happyShift action_11
action_64 (37) = happyShift action_12
action_64 (4) = happyGoto action_69
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (8) = happyShift action_2
action_65 (15) = happyShift action_4
action_65 (19) = happyShift action_5
action_65 (20) = happyShift action_6
action_65 (21) = happyShift action_7
action_65 (24) = happyShift action_8
action_65 (25) = happyShift action_9
action_65 (27) = happyShift action_10
action_65 (30) = happyShift action_11
action_65 (37) = happyShift action_68
action_65 (4) = happyGoto action_66
action_65 (6) = happyGoto action_67
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (8) = happyShift action_2
action_66 (9) = happyShift action_21
action_66 (10) = happyShift action_22
action_66 (11) = happyShift action_23
action_66 (12) = happyShift action_24
action_66 (13) = happyShift action_25
action_66 (14) = happyShift action_26
action_66 (15) = happyShift action_4
action_66 (16) = happyShift action_27
action_66 (17) = happyShift action_28
action_66 (18) = happyShift action_29
action_66 (19) = happyShift action_5
action_66 (20) = happyShift action_6
action_66 (21) = happyShift action_7
action_66 (24) = happyShift action_8
action_66 (25) = happyShift action_9
action_66 (27) = happyShift action_10
action_66 (30) = happyShift action_11
action_66 (37) = happyShift action_12
action_66 (40) = happyShift action_30
action_66 (41) = happyShift action_79
action_66 (4) = happyGoto action_20
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (38) = happyShift action_78
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (8) = happyShift action_2
action_68 (15) = happyShift action_4
action_68 (19) = happyShift action_5
action_68 (20) = happyShift action_6
action_68 (21) = happyShift action_7
action_68 (24) = happyShift action_8
action_68 (25) = happyShift action_9
action_68 (27) = happyShift action_10
action_68 (30) = happyShift action_11
action_68 (37) = happyShift action_12
action_68 (4) = happyGoto action_76
action_68 (5) = happyGoto action_77
action_68 _ = happyReduce_24

action_69 (8) = happyShift action_2
action_69 (9) = happyShift action_21
action_69 (10) = happyShift action_22
action_69 (11) = happyShift action_23
action_69 (12) = happyShift action_24
action_69 (13) = happyShift action_25
action_69 (14) = happyShift action_26
action_69 (15) = happyShift action_4
action_69 (16) = happyShift action_27
action_69 (17) = happyShift action_28
action_69 (18) = happyShift action_29
action_69 (19) = happyShift action_5
action_69 (20) = happyShift action_6
action_69 (21) = happyShift action_7
action_69 (24) = happyShift action_8
action_69 (25) = happyShift action_9
action_69 (27) = happyShift action_10
action_69 (30) = happyShift action_11
action_69 (37) = happyShift action_12
action_69 (40) = happyShift action_30
action_69 (41) = happyShift action_31
action_69 (4) = happyGoto action_20
action_69 _ = happyReduce_19

action_70 (8) = happyShift action_2
action_70 (9) = happyShift action_21
action_70 (10) = happyShift action_22
action_70 (11) = happyShift action_23
action_70 (12) = happyShift action_24
action_70 (13) = happyShift action_25
action_70 (14) = happyShift action_26
action_70 (15) = happyShift action_4
action_70 (16) = happyShift action_27
action_70 (17) = happyShift action_28
action_70 (18) = happyShift action_29
action_70 (19) = happyShift action_5
action_70 (20) = happyShift action_6
action_70 (21) = happyShift action_7
action_70 (24) = happyShift action_8
action_70 (25) = happyShift action_9
action_70 (27) = happyShift action_10
action_70 (30) = happyShift action_11
action_70 (37) = happyShift action_12
action_70 (40) = happyShift action_30
action_70 (41) = happyShift action_31
action_70 (4) = happyGoto action_20
action_70 _ = happyReduce_16

action_71 (27) = happyShift action_55
action_71 (32) = happyShift action_56
action_71 (33) = happyShift action_57
action_71 (34) = happyShift action_58
action_71 (7) = happyGoto action_75
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (38) = happyShift action_74
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (8) = happyShift action_2
action_73 (9) = happyShift action_21
action_73 (10) = happyShift action_22
action_73 (11) = happyShift action_23
action_73 (12) = happyShift action_24
action_73 (13) = happyShift action_25
action_73 (14) = happyShift action_26
action_73 (15) = happyShift action_4
action_73 (16) = happyShift action_27
action_73 (17) = happyShift action_28
action_73 (18) = happyShift action_29
action_73 (19) = happyShift action_5
action_73 (20) = happyShift action_6
action_73 (21) = happyShift action_7
action_73 (24) = happyShift action_8
action_73 (25) = happyShift action_9
action_73 (27) = happyShift action_10
action_73 (30) = happyShift action_11
action_73 (37) = happyShift action_12
action_73 (40) = happyShift action_30
action_73 (41) = happyShift action_31
action_73 (4) = happyGoto action_20
action_73 _ = happyReduce_14

action_74 _ = happyReduce_33

action_75 (28) = happyShift action_83
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (8) = happyShift action_2
action_76 (9) = happyShift action_21
action_76 (10) = happyShift action_22
action_76 (11) = happyShift action_23
action_76 (12) = happyShift action_24
action_76 (13) = happyShift action_25
action_76 (14) = happyShift action_26
action_76 (15) = happyShift action_4
action_76 (16) = happyShift action_27
action_76 (17) = happyShift action_28
action_76 (18) = happyShift action_29
action_76 (19) = happyShift action_5
action_76 (20) = happyShift action_6
action_76 (21) = happyShift action_7
action_76 (24) = happyShift action_8
action_76 (25) = happyShift action_9
action_76 (27) = happyShift action_10
action_76 (30) = happyShift action_11
action_76 (35) = happyShift action_82
action_76 (37) = happyShift action_12
action_76 (39) = happyShift action_49
action_76 (40) = happyShift action_30
action_76 (41) = happyShift action_31
action_76 (4) = happyGoto action_20
action_76 _ = happyReduce_25

action_77 (38) = happyShift action_81
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_23

action_79 (8) = happyShift action_2
action_79 (15) = happyShift action_4
action_79 (19) = happyShift action_5
action_79 (20) = happyShift action_6
action_79 (21) = happyShift action_7
action_79 (24) = happyShift action_8
action_79 (25) = happyShift action_9
action_79 (27) = happyShift action_10
action_79 (30) = happyShift action_11
action_79 (37) = happyShift action_12
action_79 (4) = happyGoto action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (8) = happyShift action_2
action_80 (9) = happyShift action_21
action_80 (10) = happyShift action_22
action_80 (11) = happyShift action_23
action_80 (12) = happyShift action_24
action_80 (13) = happyShift action_25
action_80 (14) = happyShift action_26
action_80 (15) = happyShift action_4
action_80 (16) = happyShift action_27
action_80 (17) = happyShift action_28
action_80 (18) = happyShift action_29
action_80 (19) = happyShift action_5
action_80 (20) = happyShift action_6
action_80 (21) = happyShift action_7
action_80 (24) = happyShift action_8
action_80 (25) = happyShift action_9
action_80 (27) = happyShift action_10
action_80 (30) = happyShift action_11
action_80 (37) = happyShift action_12
action_80 (40) = happyShift action_30
action_80 (41) = happyShift action_31
action_80 (4) = happyGoto action_20
action_80 _ = happyReduce_27

action_81 (38) = happyReduce_29
action_81 _ = happyReduce_22

action_82 (24) = happyShift action_84
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_32

action_84 (31) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (8) = happyShift action_2
action_85 (15) = happyShift action_4
action_85 (19) = happyShift action_5
action_85 (20) = happyShift action_6
action_85 (21) = happyShift action_7
action_85 (24) = happyShift action_8
action_85 (25) = happyShift action_9
action_85 (27) = happyShift action_10
action_85 (30) = happyShift action_11
action_85 (37) = happyShift action_68
action_85 (4) = happyGoto action_66
action_85 (6) = happyGoto action_86
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (38) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (38) = happyReduce_28
action_87 _ = happyReduce_23

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
	(HappyAbsSyn7  happy_var_4) `HappyStk`
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
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Range happy_var_1 happy_var_3
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

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 7 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ListComp happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_0  5 happyReduction_24
happyReduction_24  =  HappyAbsSyn5
		 ([]
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (Range happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 7 6 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (ListComp happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (List happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  7 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn7
		 (TBool
	)

happyReduce_31 = happySpecReduce_1  7 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn7
		 (TNum
	)

happyReduce_32 = happyReduce 5 7 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 7 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenDiv -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenNot -> cont 15;
	TokenGreater -> cont 16;
	TokenSmaller -> cont 17;
	TokenEqual -> cont 18;
	TokenTrue -> cont 19;
	TokenFalse -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenVar happy_dollar_dollar -> cont 24;
	TokenLam -> cont 25;
	TokenArrow -> cont 26;
	TokenLParen -> cont 27;
	TokenRParen -> cont 28;
	TokenEq -> cont 29;
	TokenLet -> cont 30;
	TokenIn -> cont 31;
	TokenTyBoolean -> cont 32;
	TokenTyNumber -> cont 33;
	TokenTyList -> cont 34;
	TokenFor -> cont 35;
	TokenColon -> cont 36;
	TokenLSqBracket -> cont 37;
	TokenRSqBracket -> cont 38;
	TokenComma -> cont 39;
	TokenListConcat -> cont 40;
	TokenRange -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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
