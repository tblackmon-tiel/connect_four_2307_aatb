require_relative 'board'
require_relative 'turn'
require_relative 'player'
require_relative 'computer'

class GameController
  def start_game
    puts "Welcome to Connect 4!!!"
    puts "Enter P to start a game, or Q to quit."
    user_input = gets.chomp.downcase
    while user_input != "p" && user_input != "q"
      "Please enter P to start a game, or Q to quit."
      user_input = gets.chomp.downcase
    end
    if user_input == "q"
      exit()
    end
    puts "Enter 1 for one player and 2 for two players"
    user_input = gets.chomp.downcase
    while user_input != "1" && user_input != "2"
      puts "Invalid input! Please enter 1 for one player and 2 for two players"
      user_input = gets.chomp.downcase
    end
    
    if user_input == "1"
      one_player_game
    else
      two_player_game
    end
  end

  def one_player_game
    board = Board.new
    player_1 = Player.new("X")
    computer = Computer.new
    puts "Enter Player 1 name"
    player_one_name = gets.chomp
    player_1.get_player_name(player_one_name)
    puts 
    board.render_board
    turn_counter = 1
    while !board.board_is_full? && !player_1.winner && !computer.winner
      if turn_counter % 2 == 0
        turn = Turn.new(computer, board)
        turn.get_move
        turn.set_cell
        turn.check_win_conditions
      else
        turn = Turn.new(player_1, board)
        turn.get_move
        turn.set_cell
        turn.check_win_conditions
      end
      board.render_board
      turn_counter += 1
    end
    if player_1.winner
      puts "#{player_1.name} wins! \n"
      start_game
    elsif computer.winner
      puts "Computer wins! \n"
      start_game
    elsif board.board_is_full?
      puts "Draw! \n"
      start_game
    end
  end


  def two_player_game
    board = Board.new
    player_1 = Player.new("X")
    player_2 = Player.new("O")
    puts "Enter Player 1 name"
    player_one_name = gets.chomp
    player_1.get_player_name(player_one_name)
    puts 
    puts "Enter Player 2 name"
    player_two_name = gets.chomp
    player_2.get_player_name(player_two_name)
    puts 
    board.render_board
    turn_counter = 1
    while !board.board_is_full? && !player_1.winner && !player_2.winner
      if turn_counter % 2 == 0
        turn = Turn.new(player_2, board)
        turn.get_move
        turn.set_cell
        turn.check_win_conditions
        board.render_board
        turn_counter += 1
      else
        turn = Turn.new(player_1, board)
        turn.get_move
        turn.set_cell
        turn.check_win_conditions
        board.render_board
        turn_counter += 1
      end
    end
    if player_1.winner
      puts "#{player_1.name} wins!\n"
      start_game
    elsif player_2.winner
      puts "#{player_2.name} wins!\n"
      start_game
    elsif board.board_is_full?
      puts "Draw!"
      start_game
    end
  end
end 