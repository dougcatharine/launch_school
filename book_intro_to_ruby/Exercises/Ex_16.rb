# Ex_16.rb
# Doug Catharine
# 20221020


#Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:


contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

data_label = [:email, :address, :phone]

contacts.each do |name, values|
  data_label.each do |info|
    values[info] = contact_data.shift
  end

end

#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

