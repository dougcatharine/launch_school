# q4
# Doug Catharine
# 20221102

=begin 

The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

Copy Code
numbers = [1, 2, 3, 4, 5]
What do the following method calls do (assume we reset numbers to the original array between method calls)?

Copy Code
numbers.delete_at(1)
numbers.delete(1)

=end

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # will remove the index 1 of the numbers array (2)
numbers.delete(1) # will remove the integer 1 from the numbers array

=begin 


numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
(note that the array is operated on directly and the return value of the call is the removed item 2)

Copy Code
numbers.delete(1) # numbers is now [2, 3, 4, 5]
(note that the array is operated on directly and the return value of the call is the removed item 1)

Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" method names.
  
=end
