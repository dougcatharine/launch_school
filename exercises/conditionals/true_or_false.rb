#true_or_false.rb
# Doug Catharine
# 20221022
=begin 
In the code below, boolean is randomly assigned as true or false.

Copy Code
boolean = [true, false].sample
Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
=end

boolean = [true, false].sample

puts boolean ? "I'm true" : "I'm false"
boolean ? puts("I'm true!") : puts("I'm false!")