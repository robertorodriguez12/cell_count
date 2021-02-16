require './test_helper'
require '../lib/grid'

class GridTest < MiniTest::Test 
    def setup
        @grid = Grid.new
    end 

    def test_it_exists
        assert_instance_of Grid, @grid
    end

    def test_a_grid_begins_with_three_empty_columns
        assert_equal [], @grid.column1
        assert_equal [], @grid.column2
        assert_equal [], @grid.column3
    end
end