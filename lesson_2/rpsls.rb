require 'yaml'
MESSAGES = YAML.load_file('rpsls_messages.yml')

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'x' => 'scissors',
  'l' => 'lizard',
  's' => 'spock'
}

WINNING_COMBO = {
  'r' => %w(x l),
  'p' => %w(r s),
  'x' => %w(p l),
  'l' => %w(s p),
  's' => %w(r x)
}

GAME_WINS = 5

def clear_screen
  system('clear') || system('cls')
end

def prompt(words)
  puts "=> #{words}"
end

def display_rules?
  prompt(MESSAGES['view_rules'])
  answer = gets.chomp
  if /^y$/i.match(answer) || /^yes$/i.match(answer)
    clear_screen
    puts(MESSAGES['rules'])
    puts(MESSAGES['break'])
  end
end

def win?(first, second)
  WINNING_COMBO[first].include?(second)
end

def battle_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def get_user_weapon
  choice = ''
  loop do
    prompt(MESSAGES['choose'])
    prompt(MESSAGES['weapon'])
    choice = gets.chomp

    break choice if WINNING_COMBO.keys.include?(choice)
    prompt("That's not a valid choice")
    prompt(MESSAGES['break'])
  end
end

def get_computer_weapon
  WINNING_COMBO.keys.sample
end

def display_choices(user_choice, computer_choice)
  prompt("You chose: #{VALID_CHOICES.values_at(user_choice).at(0)}")
  prompt("Computer chose: #{VALID_CHOICES.values_at(computer_choice).at(0)}")
end

def display_score(score_board)
  prompt("You:#{score_board['player']} | Computer:#{score_board['computer']} ")
end

def score_counter(round_winner, score_board)
  if round_winner == "You won!"
    score_board["player"] += 1
  elsif round_winner == "Computer won!"
    score_board["computer"] += 1
  end
end

def winner?(score_board)
  score_board["player"] == GAME_WINS || score_board["computer"] == GAME_WINS
end

def display_winner(score_board)
  if score_board["player"] == GAME_WINS
    prompt(MESSAGES['break'])
    prompt("Congratulations! Grand winner!")
    prompt(MESSAGES['break'])
  else
    prompt(MESSAGES['break'])
    prompt("You lost! You're not the grand winner!")
    prompt(MESSAGES['break'])
  end
end

def display_welcome
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['best_of'])
  display_rules?
end

def display_round_winner(round_winner, battle_round)
  prompt(MESSAGES['star_break'])
  prompt(round_winner + " Battle # #{battle_round}")
  prompt(MESSAGES['star_break'])
end

def play_again?
  prompt(MESSAGES['play_again'])
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

battle_round = 1
score_board = { "player" => 0, "computer" => 0 }

display_welcome

loop do
  clear_screen
  loop do
    prompt("Battle # #{battle_round}")
    display_score(score_board)
    user_choice = get_user_weapon
    computer_choice = get_computer_weapon

    clear_screen
    display_choices(user_choice, computer_choice)
    round_winner = battle_results(user_choice, computer_choice)

    display_round_winner(round_winner, battle_round)

    score_counter(round_winner, score_board)
    battle_round += 1
    break if winner?(score_board)
  end

  display_winner(score_board)

  break unless play_again?

  battle_round = 1
  score_board = { "player" => 0, "computer" => 0 }
end

prompt(MESSAGES['goodbye'])
