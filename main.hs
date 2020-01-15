import TestExercise_1
import TestExercise_2
import TestExercise_3

-- Ignore the following - it is the "main" program making sure the
-- tests for the exercise are run and that this file is interpreted
-- correctly
import Control.Monad   
main :: IO ()
main = do  
    print ("Enter test to run (1,2,3): ")
    c <- getChar
    when (c == '1') $ do  
        print ("Run test for first exercise")
        testExercise_1  
    when (c == '2') $ do  
        print ("Run test for second exercise")
        testExercise_2
    when (c == '3') $ do  
        print ("Run test for third exercise")  
        testExercise_3
    main