--Implement a function „maxElement“ that determines the maximum value of a list of positive numbers
maxElement:: [Int] -> Int
maxElement [] = 0
maxElement [x] = x
maxElement (x:xs) = if (x > maxElement xs) then x else maxElement xs 

-- Implement a function „averageList“ that determines the average value of a list of numbers using tail recursion
-- solution (less complicated and better named variables)  
-- first function is necessary to handle empty list (avoid div zero)
averageList [] = 0
averageList xs = locAverageList 0 0 xs
    where
    locAverageList sum count [] = sum / count
    locAverageList sum count (x:xs) = locAverageList (sum + x) (count + 1) xs

-- solution (least complicated)
averageList :: (Fractional t, Eq t) => [t] -> t
averageList [] = 0
averageList xs = locAverageList 0 0 xs
    where
    locAverageList n m [] = if (m == 0) then 0 else n / m
    locAverageList n m (x:xs) = locAverageList (n + x) (m + 1) xs

-- first solution (little bit more loc)
averageList :: (Fractional t, Eq t) => [t] -> t
averageList [] = 0
averageList xs = locAverageList 0 0 xs
    where
    locAverageList n m [] | m == 0    = 0
                          | otherwise = n / m
    locAverageList n m (x:xs) = locAverageList (n + x) (m + 1) xs


-- second solution
averageList1:: (Fractional a) => [Int] -> a
averageList1 xs = realToFrac xa / realToFrac ya 
  where (xa, ya) = (sumAndCount xs 0)

sumAndCount:: [Int] -> Int -> (Int, Int)
sumAndCount (x:xs) y = ((x + xa), ya) 
  where (xa, ya) = (sumAndCount xs (y + 1))
sumAndCount [] y = (0, y)

-- third solution
averageList2:: (Fractional a) => [Int] -> a
averageList2 xs = realToFrac (naiveSumList xs) / realToFrac (length xs)
--
naiveSumList :: [Int] -> Int
naiveSumList (x:xs) = x + (naiveSumList xs)
naiveSumList [] = 0

-- third solution
averageList3 xs = realToFrac (sumList' xs) / realToFrac (length xs)
--
sumList' x = foldl (+) 0 x
