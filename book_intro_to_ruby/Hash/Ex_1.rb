# Ex_1.rb
# Doug Catharine
# 20221019

=begin
  
Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

Copy Code
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }



  
=end

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

immediate_family = family.select do |k,v|
  k== :sisters || k==:brothers
end
  arr = immediate_family.values.flatten

  p arr