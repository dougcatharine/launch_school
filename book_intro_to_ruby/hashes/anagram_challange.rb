# anagram_challange.rb
# Doug Catharine
# 20200714

=begin
Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
(etc)

=end


#could not solve, solution shown

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = Hash.new

words.each do |word| # for each item in array
  key = word.split('').sort.join  # split letters, sort alphabeticlly and join, so all anagrams produce same value
  if result.has_key?(key) # if allready found sorted letters
    result[key].push(word) #add word to anagram list
  else
    result[key] = [word]  # create new key value
  end
end

result.each_value do |v|  #clean print for words
  puts "------"
  p v
end

