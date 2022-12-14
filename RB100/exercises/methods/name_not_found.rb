# name_not_found.rb
# Doug Catharine
# 20221022


=begin

Name Not Found
Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

Copy Code
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'
The code should output true twice.

=end

def assign_name(name='Bob')
  return name
end
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'