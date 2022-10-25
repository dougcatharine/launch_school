require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
#puts MESSAGES.inspect

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

number1 = ''
number2 = ''
name = ''

prompt(MESSAGES['welcome'])

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}")

loop do # main loop
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp() # #variable = Module.method
    if valid_number?(number1)
      prompt('the number is:' + number1)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  loop do
    prompt(MESSAGES['second_num'])
    number2 = Kernel.gets().chomp() # #variable = Module.method
    if valid_number?(number2)
      prompt('the number is:' + number2)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  operator = ''
  loop do
    # This is called a heredoc.  'MSG' can be any string but must mach with
    # ending string
    operator_prompt = <<-MSG
      What operation would you like to perform?
      1)add
      2)subtract
      3)multiply
      4)divide
    MSG
    prompt(operator_prompt)
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("must choose 1,2,3, or 4")
    end
  end
  prompt("#{operation_to_message(operator)} the two numbers...")
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The answer is #{result}")

  prompt(MESSAGES['another_calc'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
