# reverse_it.rb
# Doug Catharine
# 20221031


=begin 

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:

Copy Code
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
The tests above should print true.

=end

#create method that takes in string of words
# splitwords into an array
# reverse order of array
# combine into a string
# print string
# endmethod


def reverse_sentence(str)
  split_array = str.split
  revesred_array = split_array.reverse
  revesred_array.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
