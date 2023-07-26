# frozen_string_literal: true

require "connect_four_2307_aatb"
require './lib/connect_four_2307_aatb/cell'
require './lib/connect_four_2307_aatb/board'
require './lib/connect_four_2307_aatb/game_controller'
require './lib/connect_four_2307_aatb/player'
require './lib/connect_four_2307_aatb/turn'
require './lib/connect_four_2307_aatb/computer'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
