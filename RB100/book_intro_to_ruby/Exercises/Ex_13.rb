# Ex_13.rb
# Doug Catharine
# 20221020


#Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.


arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |element| element.start_with?('s')}

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


arr.delete_if do |element| 
  element.start_with?('s') || element.start_with?('w')

end

p arr