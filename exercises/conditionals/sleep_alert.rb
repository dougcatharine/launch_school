# sleep_alert.rb
# Doug Catharine
# 20200720


#In the code below, status is randomly assigned as 'awake' or 'tired'.

status = ['awake', 'tired'].sample
#Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.

def productivity(status)
  return "Be productive!" if status.eql?('awake')
  return "Go to sleep!" if status.eql?('tired')
end

puts productivity(status)


# solution

alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert