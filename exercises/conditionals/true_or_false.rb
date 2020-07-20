# true_or_false.rb
# Doug Catharine
# 20200720

# In the code below, boolean is randomly assigned as true or false.

boolean = [true, false].sample
#Write a ternary operator that prints "I'm true!" if boolean equals true and #prints "I'm false!" if boolean equals false.

if boolean
  puts "Im true!"
else
  puts "Im false"
end

# solution 
boolean ? puts("I'm true!") : puts("I'm false!")

