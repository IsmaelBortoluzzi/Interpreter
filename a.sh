# let z = 4 in (((\x: Num -> (\y: Num -> x + y + z)) 2) 3);
let b = ((\z: Num -> z + z) 10) in (((\x: Num -> (\y: Num -> x + y + b)) 2) 3);

(\x: List[Num] -> x) [2, 3];
[2, 3];

if 6 > 5 && (!false)
then 2 + 5 + 7
else 5 + 2;

(\x: Num -> [x, 2 * (((2 * (2 + 3))) / 2), 3]) 1;

# Even Numbers
#(\x -> if (x))


((\x: List[Num] -> (\y: Num -> x)) [2, 3]) 3;

((\x: List[Num] -> x) [2, 3]);