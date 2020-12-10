module Exercise_3 where
  
--Implement a function “sumList” that adds up all elements of a positive integer list (use Haskell’s “foldl”)
sumList:: [Int] -> Int
sumList = foldl (+) 0
      
--Implement a function “sumListEven” that adds up all even elements of a positive integer list
sumListEven:: [Int] -> Int
sumListEven = foldl addIfEven 0 where
    addIfEven:: Int-> Int-> Int
    addIfEven x y = if  mod y 2 == 0 then x+y else x