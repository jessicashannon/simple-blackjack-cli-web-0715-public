def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
  card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(total)
  prompt_user
  choice = get_user_input

  if choice == "h"
    total = deal_card + total
  end
  total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
     hit = hit?(total)
     total = display_card_total(hit)
  end
  end_game(total)
end
    
