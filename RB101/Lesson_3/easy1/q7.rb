# q7.rb
# Doug Catharine
# 20221102

=begin 

If we build an array like this:

Copy Code
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
We will end up with this "nested" array:

Copy Code
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
Make this into an un-nested array.

=end

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!
