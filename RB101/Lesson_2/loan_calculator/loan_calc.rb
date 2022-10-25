# loan_calc.rb
# Doug Catharine
# 20221025

# get requiered input
#   -loan ammount
#   -APR
#   -loan duration
# perform calculation
# output calculation data
#   -monthly interest rate
#   -loan duration in months
#   -monthly paymenr

require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def valid_number?(input)
  if input.to_i.to_s == input || input.to_f.to_s == input
    true
  else
    false
  end
end

def ask_loan_amount
  loop do
    puts MESSAGES['loan_amount']
    loan_val = gets.chomp
    if valid_number?(loan_val)
      return loan_val.to_i
    end
    puts MESSAGES['invalid_num']
  end
end

def ask_apr
  loop do
    puts MESSAGES['apr_perc']
    apr = gets.chomp
    if valid_number?(apr)
      return (apr.to_f / 100)
    end
    puts MESSAGES['invalid_num']
  end
end

def ask_time
  loop do
    puts MESSAGES['time']
    loan_val = gets.chomp
    if valid_number?(loan_val)
      return loan_val.to_f
    end
    puts MESSAGES['invalid_num']
  end
end

# main program
puts MESSAGES['welcome']

loop do
  loan_amount = ask_loan_amount
  apr = ask_apr
  months = ask_time
  monthly_rate = apr / 12
  #binding.pry
  payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-months)))
  puts "Your monthly interest rate is #{monthly_rate}"
  puts "Your monthly payment will be #{payment.round(2)} for #{months} months."
  puts MESSAGES['quit']
  answer = gets.chomp
  break if answer.downcase.start_with?('y')
end
