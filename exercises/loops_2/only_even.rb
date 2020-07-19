# only_even.rb
# Doug CAtharine
# 20200718

#Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  if number.odd?
    next
  end

  puts number
end

# solution

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end