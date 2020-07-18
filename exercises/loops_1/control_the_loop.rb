# control_the_loop.rb
# Doug Catharine
# 20200718

#Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5 # line added
  iterations += 1 # line added 
  
end