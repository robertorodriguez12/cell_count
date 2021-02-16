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
        expected = ['A1', 'A2', 'A3',
                 'B1', 'B2', 'B3',
                'C1', 'C2', 'C3']
        assert_equal expected, @grid.cells.keys
    end

    def test_grid_has_valid_cell_coordinates
        assert_equal true, @grid.valid_selection('A1')
        assert_equal false, @grid.valid_selection('D1')
    end
end