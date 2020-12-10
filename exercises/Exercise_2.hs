module Exercise_2 where

--Implement a function „maxElement“ that determines the maximum value of a list of positive numbers
maxElement:: [Int] -> Int
maxi [a,b] = if a > b then a else b 
maxElement (x:y:xs) = let a = maxElement (y:xs) in if a > x then a else x 
maxElement [x] = x



-- Implement a function „averageList“ that determines the average value of a list of numbers using tail recursion
-- ATTENTION: For most participants the type definition of this function is confusing. Hence, it is often easier to remove the function definition and use GHCi type inference (but it is necessary for `Exercise_test.hs` script to compile)
averageList:: (Fractional t, Eq t) => [t] -> t -- remove this line to use GHCi type inference
averageList xs = average xs 0 0 where 
    average  [x] count acc = (acc+x)/(count+1)
    average (x:xs) count acc = average(xs) (count + 1) (acc + x)  