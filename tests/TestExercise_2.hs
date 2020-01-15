module TestExercise_2 where

import Exercise_2

-- Don't change the code below these lines -----------------------
-- Tests for exercise two
testExercise_2_result_a | maxElement [19, 3, 42, 4711] == 4711 = "Exercise 2a: Congratulations!"
                        | otherwise = "Exercise 2a: Ups, maybe another try?"
testExercise_2_result_b | averageList [1..10] == 5.5 = "Exercise 2b: Congratulations!"
                        | otherwise = "Exercise 2b: Ups, maybe another try?"

testExercise_2 = do
  print ("Result for Exercise 2a: ", testExercise_2_result_a)
  print ("Result for Exercise 2b: ", testExercise_2_result_b)