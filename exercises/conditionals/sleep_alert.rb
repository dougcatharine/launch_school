#sleep_alert.rb
#Doug Catharine
# 20221022

=begin 
In the code below, status is randomly assigned as 'awake' or 'tired'.

Copy Code
status = ['awake', 'tired'].sample
Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable. 

=end

status = ['awake', 'tired'].sample

alert = if status == 'awake'
          'Be productive'
        else
          'go to sleep'
        end

puts alert