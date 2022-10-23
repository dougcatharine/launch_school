# opposites_attract.rb
# Doug Catharine
# 20221021

=begin

Opposites Attract
Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

You may use the following method to validate input integers:

Copy Code
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
Examples:

Copy Code
$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
0
>> Invalid input. Only non-zero integers are allowed.
>> Please enter a positive or negative integer:
-5
8 + -5 = 3

$ ruby opposites.rb
>> Please enter a positive or negative integer:
8
>> Please enter a positive or negative integer:
5
>> Sorry. One integer must be positive, one must be negative.
>> Please start over.
>> Please enter a positive or negative integer:
-7
>> Please enter a positive or negative integer:
5
-7 + 5 = -2
=end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def check_condition(array_size_2)
  array_size_2[0]*array_size_2[1] < 0
end

idx = 0
ary = Array.new
loop do 
  while idx < 2
    puts "Please enter a positive or negative number"
    answer = gets.chomp
    valid_number?(answer)? ary[idx]=answer.to_i : next
    idx +=1
  end
  

  if !check_condition(ary)
    puts 'Sorry. One integer must be positive, one must be negative.'
    puts 'Please start over.'
    idx = 0
  else
    puts "#{ary[0]} + #{ary[1]} = #{ary[0] +ary[1]}"
    break
  end


end
  