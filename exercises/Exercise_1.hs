module Exercise_1 where

-- Exercise 1a: Define a function “secondElement” that returns the second element of a list
secondElement (_:a:_) = a

-- Exercise 1b:Define a function “tupleMatch” that matches ‘2’ of the tuple (1, “firstList”, [1,2,3]) to variable x and adds 10
tupleMatch :: Num c => (a, b, [c]) -> c
tupleMatch (a, b, cs) = secondElement cs + 10
