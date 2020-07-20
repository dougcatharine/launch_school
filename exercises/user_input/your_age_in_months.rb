# your_age_in_months.rb
# Doug Catharine
# 20200718

#Write a program that asks the user for their age in years, and then converts #that age to months.

#Examples:

#$ ruby age.rb
#>> What is your age in years?
#35
#You are 420 months old.

def echo(str)
  puts "You are #{str} months old"
end

def listen
  return gets.to_i*12

end


puts "What is your age in years?"
echo(listen)