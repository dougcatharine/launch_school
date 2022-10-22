#combining_names.rb
# Doug Catharine
# 20221022

=begin 

Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

Copy Code
first_name = 'John'
last_name = 'Doe'
Expected output:

Copy Code
John Doe
=end

first_name = 'John'
last_name = 'Doe'
puts "#{first_name} #{last_name}"

full_name = first_name + ' ' + last_name
puts full_name

first_name << last_name
puts first_name # => JohnDoe