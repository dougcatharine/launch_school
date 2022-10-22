# password.rb
# Doug Catharine
# 20221021

=begin
Passwords
Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

Examples:

Copy Code
$ ruby password.rb
>> Please enter your password:
Hello
>> Invalid password!
>> Please enter your password:
Secret
>> Invalid password!
>> Please enter your password:
SecreT
Welcome!


=end


PASSWORD = '1234'

loop do
  puts "Please enter your password"
  answer = gets.chomp
  break if answer == PASSWORD
  puts ":error-incorect password!"
end
puts "welcome"