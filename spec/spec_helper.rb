# frozen_string_literal: true

require "connect_four_2307_aatb"
require './lib/cell'
require './lib/board'
require './lib/game_controller'
require './lib/player'
require './lib/turn'
require './lib/computer'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
