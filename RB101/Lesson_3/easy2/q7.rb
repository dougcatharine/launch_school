# q7.rb
# Doug Catharine
# 20221102

=begin 

In the previous practice problem we added Dino to our array like this:

Copy Code
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
We could have used either Array#concat or Array#push to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))

# Soolution

flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
or

Copy Code
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
