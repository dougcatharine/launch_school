# labeled_numbers
# Doug Catharine
# 20221023


=begin 

Use Hash#each to iterate over numbers and print each element's key/value pair.

Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}
Expected output:

Copy Code
A high number is 100.
A medium number is 50.
A low number is 10.

=end

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k, v|
  puts "A #{k} number is #{v}"
end