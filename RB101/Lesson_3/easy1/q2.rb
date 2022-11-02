# q2
# Doug Catharine
# 20221102

=begin 

Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
# != is a conditional and should be used in comparison
put ! before something, like !user_name
# ! or bang is a modifier that proves a not operator, typically used in boolean operations
put ! after something, like words.uniq!
! after a method typically indicates that the method is a mutable method
put ? before something
? before something is used to begin a ternary operation
put ? after something
? after a method typically indicates a boolean return
put !! before something, like !!user_name
!! before a variable is a not not method, so it should produce the unmanipulated result




Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:

!= means "not equals"
? : is the ternary operator for if...else
!!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.
=end
