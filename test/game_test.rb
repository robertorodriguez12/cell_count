require './test_helper'
require '../lib/game'

class GameTest < MiniTest::Test
    def setup
        @game = Game.new
    end

    def test_game_exists
        assert_instance_of Game, @game
    end

    def test_game_begins_with_attributes
        assert_instance_of Grid, @game.grid
    end

    def test_game_can_find_cell_from_user_input
        chosen_cell = @game.find_cell('A1')
        assert_equal 'A1', chosen_cell.coordinate
    end       
end