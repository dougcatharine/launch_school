# q8.rb
# Doug Catharine
# 20221102

=begin 

Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
Turn this into an array containing only two elements: Barney's name and Barney's number

=end

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

puts flintstones.assoc("Barney")
