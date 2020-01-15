module TestExercise_1 where

import Exercise_1
-- Don't change the code below these lines -----------------------
-- Tests for exercise one
testExercise_1_result_a = test [1,2,3] 
  where test xs | secondElement xs == 2 = "Exercise 1a: Congratulations!" 
                | otherwise = "Exercise 1a: Ups, maybe another try?"

testExercise_1_result_b = test (1, "firstList", [1,2,3]) 
  where test (a,cs,xs) | tupleMatch (a,cs,xs) == 12 = "Exercise 1b: Congratulations!" 
                       | otherwise = "Exercise 1b: Ups, maybe another try?"

testExercise_1 = do
  print ("Result for Exercise 1a: ", testExercise_1_result_a)
  print ("Result for Exercise 1b: ", testExercise_1_result_b)