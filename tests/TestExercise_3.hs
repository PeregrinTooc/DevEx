module TestExercise_3 where

import Exercise_3

-- Don't change the code below these lines -----------------------
-- tests for exercise three
testExercise_3_result_a | sumList [19, 3, 42, 4711] == 4775 = "Exercise 3a: Congratulations!"
                        | otherwise = "Exercise 3a: Ups, maybe another try?"
testExercise_3_result_b | sumListEven [29, 12, 42, 4711] == 54 = "Exercise 3b: Congratulations!"
                        | otherwise = "Exercise 3b: Ups, maybe another try?"

testExercise_3 = do
  print ("Result for Exercise 3a: ", testExercise_3_result_a)
  print ("Result for Exercise 3b: ", testExercise_3_result_b)