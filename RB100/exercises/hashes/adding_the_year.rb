# adding_the_year.rb
# doug Catharine
# 20221023


=begin 

Using the code below, add the key :year and the value 2003 to car.

Copy Code
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}
=end

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car.merge!({year: 2003})


car[:year] = 2003

puts car