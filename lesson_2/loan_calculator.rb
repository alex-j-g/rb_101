require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def clear_screen
  system('clear') || system('cls')
end

def prompt(message)
  puts("=> #{message}")
end

def valid_user?(name)
  name.empty? || name.to_i.to_s == name
end

def valid_number?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_apr?(num)
  num.to_f.to_s == num && num.to_f > 0 || num.to_i.to_s == num && num.to_i > 0
end

def years_to_months(num)
  num.to_i * 12
end

def interest_monthly(num)
  (num / 100) / 12
end

def yes_or_no?(answer)
  loop do
    prompt("Is this correct? (y/n)")
    answer = gets.chomp
    if /^y$/i.match(answer) || /^yes$/i.match(answer)
      return true
    elsif /^n$/i.match(answer) || /^no$/i.match(answer)
      return false
    else
      prompt("Please enter y or n to continue")
    end
  end
end

prompt(MESSAGES['welcome'])

user = ''
loop do
  prompt(MESSAGES['name'])
  user = gets.chomp

  if valid_user?(user)
    prompt(MESSAGES['invalid_name'])
  else
    break
  end
end

clear_screen
user.capitalize!

loan = ''
apr = ''
month_interest = ''
duration = ''
duration_month = ''
month_payment = ''

loop do
  loop do
    prompt("#{user}, " + MESSAGES['loan_amount'])
    loan = gets.chomp
    if valid_number?(loan)
      clear_screen
      break
    else
      prompt(MESSAGES['invalid_amount'])
    end
  end

  loop do
    prompt(MESSAGES['loan_apr'])
    apr = gets.chomp
    if valid_apr?(apr)
      clear_screen
      break
    else
      prompt(MESSAGES['invalid_apr'])
    end
  end

  month_interest = interest_monthly(apr.to_f)

  loop do
    prompt(MESSAGES['loan_duration'])
    duration = gets.chomp
    if valid_number?(duration)
      clear_screen
      break
    else
      prompt(MESSAGES['invalid_duration'])
    end
  end

  duration_month = years_to_months(duration)

  month_payment = loan.to_i * (month_interest / (1 -
                              (1 + month_interest)**(-duration_month)))

  prompt("Yor loan amount is: #{loan}")
  prompt("Your APR is: #{apr}")
  prompt("Your loan duration is: #{duration} years")
  # prompt("Is this correct? (y/n)")
  # answer = gets.chomp.downcase!
  correct = yes_or_no?('')
  break if correct
  clear_screen
end

prompt("#{user} your monthly payment is: $#{month_payment.round(2)}")
prompt(MESSAGES['goodbye'])
