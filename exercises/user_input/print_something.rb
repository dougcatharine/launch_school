# print_something.rb
# Doug Catharine
# 20200718

=begin
Write a program that asks the user whether they want the program to print 
"something", then print it if the user enters y. Otherwise, print nothing.

Examples:
$ ruby something.rb
>> Do you want me to print something? (y/n)
y
something

$ ruby something.rb
>> Do you want me to print something? (y/n)
n

$ ruby something.rb
>> Do you want me to print something? (y/n)
help
=end


def echo(str)
  puts str
end

def listen
  if gets.chomp.eql?("y")
    return "something"
  end
end


puts "Do you want me to print something? ('y' for yes)"
echo(listen)



# solution
puts '>> Do you want me to print something? (y/n)'
choice = gets.chomp
puts 'something' if choice == 'y'