# Say_Hello_v2.rb
# Doug Catharine
# 20220530


# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
counter = 1
while say_hello
  puts 'Hello!'
  say_hello = false if counter == 5
  counter += 1
end
