# ex_1.rb
# Doug Catharine
# 20200715

#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 
#and print out each value.

sample = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

sample.each do|num| 
  if num > 5 
    puts num
  end
end


# from solution 

arr.each { |number| puts number if number > 5 }

odd_sample = sample.select{ |num| num.odd? }

sample<<11
sample = [0]<<sample
 # from solution 

 # Append
arr.push(11)
# --- or ---
arr << 11

# Prepend
arr.unshift(0)

sample.pop
sample <<3

# from solution 
arr.push(3)

sample.uniq!