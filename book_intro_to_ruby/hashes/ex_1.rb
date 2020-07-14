# ex_1.rb
# Doug Catharine
# 20200701

=begin
Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
=end


# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
imed_fam = family.select { |k,v|  k == :sisters || k == :brothers}

puts imed_fam


# solution 

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten
puts immediate_family
puts arr
p arr

