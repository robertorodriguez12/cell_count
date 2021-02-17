require './test_helper'
require '../lib/grid'

class GridTest < MiniTest::Test 
    def setup
        @grid = Grid.new
    end 

    def test_it_exists
        assert_instance_of Grid, @grid
    end
    
    def test_cells_can_be_generated
        assert_equal 3, @grid.cells[0].length
        assert_equal 3, @grid.cells[1].length
        assert_equal 3, @grid.cells[2].length
    end
end