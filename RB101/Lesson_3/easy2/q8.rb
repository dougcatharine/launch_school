# q8.rb
# Doug Catharine
# 20221102


=begin 

Shorten the following sentence:

Copy Code
advice = "Few things in life are as important as house training your pet dinosaur."
Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?

=end

advice = "Few things in life are as important as house training your pet dinosaur."

pre_advice = advice.slice!("Few things in life are as important as ")



# solution

advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
p advice # => "house training your pet dinosaur."
Bonus: Using slice, the non-destructive version of slice!, would return a new string with the same text ("Few things in life are as important as ") but the advice variable would remain the same, pointing to the original string ("Few things in life are as important as house training your pet dinosaur.").
