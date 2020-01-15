-- Define a function “secondElement” that returns the second element of a list
secondElement (_:a:_) = a

-- Define a function “tupleMatch” that matches ‘2’ of the tuple (1, “firstList”, [1,2,3]) to variable x and adds 10
tupleMatch (_, _, (_:x:_)) = x + 10