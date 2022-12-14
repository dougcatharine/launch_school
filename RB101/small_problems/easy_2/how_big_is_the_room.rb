# how_big_is_the_room.rb
# Doug Catharine
#20221102

=begin 

How big is the room?
Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Copy Code
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

=end

def get_length(dim = "length")
  puts "Enter the #{dim} of the room in meters:"
  gets.chomp
end

length = get_length
width = get_length('width')
area = length.to_i * width.to_i
puts "The area of the room is #{area.round(2)} square meters (#{(area * 10.7639).round(2)} square feet)."
