module Exercise_2 where

--Implement a function „maxElement“ that determines the maximum value of a list of positive numbers
maxElement:: [Int] -> Int
maxElement xs = 42

-- Implement a function „averageList“ that determines the average value of a list of numbers using tail recursion
-- ATTENTION: For most participants the type definition of this function is confusing. Hence, it is often easier to remove the function definition and use GHCi type inference (but it is necessary for `Exercise_test.hs` script to compile)
averageList:: (Fractional t, Eq t) => [t] -> t -- remove this line to use GHCi type inference
averageList xs = 12.0