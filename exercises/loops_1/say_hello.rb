# say_hello.rb
# Doug Catharine
# 20200718


# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
index = 0 # added
while say_hello
  puts 'Hello!'
  index += 1 # added
  if index == 5 # added
    say_hello = false
  end # added
end

# solutions 
=begin 
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

5.times do
  puts 'Hello!'
end

=end