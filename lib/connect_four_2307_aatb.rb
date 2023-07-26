# frozen_string_literal: true

require_relative "connect_four_2307_aatb/version"
require_relative "connect_four_2307_aatb/game_controller"

module ConnectFour2307Aatb
  class Error < StandardError; end
  
  def self.start
    gc = GameController.new.start_game
  end
end
