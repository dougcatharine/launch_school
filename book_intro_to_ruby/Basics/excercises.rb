=begin
Work by Doug Catharine
20200617
examples from end of "Basics" chapter in Launch School Ruby book
=end

require 'pry'
=begin
-------------------------------------------------------------------------
ex. 1 Add two strings together that, when concatenated, return your first and 
last name as your full name in one string.For example, if your name is John Doe,
think about how you can put "John" and "Doe" together to get "John Doe".
=end

puts "Problem 1"
puts

first_name = "Doug"
last_name = "Catharine"
puts "#{first_name} #{last_name}"   # string interpolation
puts first_name+' ' +last_name      # string concatination

=begin
-------------------------------------------------------------------------
ex. 2 Use the modulo operator, division, or a combination of both to take a 4 
digit number and find the digit in the: 1) thousands place 2) hundreds place 3) 
tens place 4) ones place
=end
puts
puts "Problem 2"
puts

number = 5432
# solution is much more simple than my work below
thousands = number / 1000
#binding.pry
hundreds = number % 1000 / 100
tens = number  % 100 / 10
ones = number  % 10
puts thousands
puts hundreds
puts tens
puts ones

# my solution
array = [1000,100,10,1]
answer = [nil,nil,nil,nil]
for i in 0..3
  
  answer[i] = number / array[i]
  number = number % array[i]
end
puts answer 

=begin
-------------------------------------------------------------------------
ex. 3 Write a program that uses a hash to store a list of movie titles with the 
year they came out. Then use the puts command to make your program print out 
the year of each movie to the screen. The output for your program should look 
something like this.
1975
2004
2013
2001
1981
=end
puts
puts "Problem 3"
puts

movie_list = Hash.new
movie_list = {
  :speed =>1994,
  :et => 1982,
  :die_hard => 1988,
  :star_wars => 1977
}
puts movie_list[:speed]
puts movie_list[:et]
puts movie_list[:die_hard]
puts movie_list[:star_wars]

# solution also shows "new method" of hashing below 
movies = { jaws: 1975,
  anchorman: 2004,
  man_of_steel: 2013,
  a_beautiful_mind: 2001,
  the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

=begin
-------------------------------------------------------------------------
#4 Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
=end
puts
puts "Problem 4"
puts 

year= [movie_list[:speed], 
  movie_list[:et],
  movie_list[:die_hard], 
  movie_list[:star_wars]]
year.each{ |val| puts val }
#but above wasnt learned yet in book, so I suspect  they want 
puts movie_list[0]
puts movie_list[1]
puts movie_list[2]
puts movie_list[3]

#solution manualy entered dates such as 
dates = [1975, 2004, 2013, 2001, 1981]

=begin
-------------------------------------------------------------------------
ex. 5 Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
=end
puts
puts "Problem 5"
puts 
#easy way, not sure if they want this
five_fact = 5*4*3*2*1
six_fact = 6*five_fact
seven_fact = 7*six_fact
eight_fact = 8*seven_fact
puts five_fact 
puts six_fact 
puts seven_fact 
puts eight_fact

#loopy way
ans = Array.new
ans[1] = 1

for i in 2..8 
  ans[i] = i*ans[i-1]
end
puts ans[5..8]

# their solution was far easier
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

=begin
-------------------------------------------------------------------------------
ex. 6 Write a program that calculates the squares of 3 float numbers of your 
choosing and outputs the result to the screen.
=end

puts
puts "problem 6"
puts

#need to reinitialize beacuse of var neame being reused
ans = Array.new
ans[2] = nil

prob_six_arry = [4.34, 5.32, 5.67]

for i in 0..2
  ans[i] = prob_six_arry[i]**2
end
#binding.pry
puts ans

# solution went the simple way
puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34

=begin
-------------------------------------------------------------------------------
What does the following error message tell you?
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
=end

#The above error tells us that in irb, line two, the code has an unintentional 
#")" when a "}" was due. 

#solution states "There is an opening bracket somewhere in the program without 
#a closing bracket following it. It may have happened when creating a hash."