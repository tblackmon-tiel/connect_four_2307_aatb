require './lib/connect_four_2307_aatb/game_controller'


module ConnectFourCLI
  def self.start
    gc = GameController.new.start_game
  end
end