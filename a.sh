# This is here for the sintax highlight and shortcut to comment lines


let z = 4 in (((\x: Num -> (\y: Num -> x + y + z)) 2) 3);
let b = ((\z: Num -> z + z) 10) in (((\x: Num -> (\y: Num -> x + y + b)) 2) 3);

(\x: List[Num] -> x) [2, 3];

if 6 > 5 && ! 3 < 2
then 2 + 3 + 7
else 2 + 2;

[7, 8, 9];

(\x: Num -> [x, 2 * (((2 * (2 + 3))) / 2), 3]) 1;


# 2 * (((2 * (2 + 3))) / 2) = 10;
((\x: List[Num] -> x + x) [2 * (((2 * (2 + 3))) / 2), 3]);
((\x: List[Num] -> x - x) [2 * (((2 * (2 + 3))) / 2), 3]);
((\x: List[Num] -> x ++ x) [2 * (((2 * (2 + 3))) / 2), 3]);


# [2, 4, 6, 8, 10];
[1, 2, 3, 4, 5] * 2;

# 2 * 15 = 30 + 15 = 45;
2 * [1, 2, 3, 4, 5] + [1, 2, 3, 4, 5];

[2 * (((2 * (2 + 3))) / 2), 3] ++ [2 * (((2 * (2 + 3))) / 2), 3];

[true, false, true, false, true];

[3 > 4, 5 == 5 && (5 == 6 || 7 > 5), 9 < 7, ! 9 < 7, ! false && true];
