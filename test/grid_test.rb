require './test_helper'
require '../lib/grid'

class GridTest < MiniTest::Test 
    def setup
        @grid = Grid.new
    end 

    def test_it_exists
        assert_instance_of Grid, @grid
    end

    def test_cells_are_generated_once_grid_is_initialized
        assert_equal 3, @cell.column1.length
        assert_equal 3, @cell.column2.length
        assert_equal 3, @cell.column3.length
    end
end