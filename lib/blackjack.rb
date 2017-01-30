def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  x = rand(1..11)
  return x
end

def display_card_total(card_total)
  #card_total = deal_card
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  x = gets.chomp
  return x
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum = sum + deal_card
  end
  display_card_total(sum)
  return sum
  # code #initial_round here
end

def hit?(number)
  prompt_user
  x = get_user_input
  if x == 's'
    return number
  elsif x == 'h'
    new_card = deal_card
    number = number + new_card
    return number
  elsif x != 'h' && x != 's'
    invalid_command
    hit?(number)
  end
end

def invalid_command
puts "Please enter a valid command"
prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
    display_card_total(x)
  end

  end_game(x)
  return false
end
