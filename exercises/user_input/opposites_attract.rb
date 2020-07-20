# opposites_attract.rb
# Doug Catharine
# 20200719

def get_num
  puts "Enter two numbers with on negative intiger and one postive intiger"
  arr = gets.chomp.split
  if arr.size < 2
    puts "Enter your second number"
    array << gets.chomp.split
  end
  return arr
end

def ensure_pos_neg(arr)
  arr_new = Array.new
  arr_new << arr[0].to_i
  arr_new << arr[1].to_i
  arr_new.sort!
  if arr_new[0]<0 && arr_new[1]>0
    return true
  else
    return false
  end
end



loop do 
  arr = get_num
  if ensure_pos_neg(arr)
    puts "#{arr[0]} + #{arr[1]} = #{(arr[0].to_i + arr[1].to_i).to_s}"
    break
  else
    puts "you didnt enter a positive and negative number"
    puts "Please star over"
  end
end

=begin
Opposites Attract
Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
Examples:

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