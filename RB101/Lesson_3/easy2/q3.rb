# q3.rb
# Doug Catharine
# 20221102

=begin 

We have most of the Munster family in our age hash:

Copy Code
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
add ages for Marilyn and Spot to the existing hash

Copy Code
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
