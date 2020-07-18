# Loopception.rb
# Doug Catharine
# 20200718

=begin
The code below is an example of a nested loop. Both loops currently loop 
infinitely. Modify the code so each loop stops after the first iteration.
=end


loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break  # line added
  end
  break   # line added
end

puts 'This is outside all loops.'