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
        @grid.generate_cells
        assert_equal 3, @grid.cells[0].length
        assert_equal 3, @grid.cells[1].length
        assert_equal 3, @grid.cells[2].length
    end

    def test_game_can_count_active_neighbors
        @grid.cells[0] = []
        @grid.cells[1] = []
        @grid.cells[2] = []
        cell = mock
        cell.stubs(:active).returns(true)
        cell.stubs(:coordinate).returns('A1')
        cell2 = mock
        cell2.stubs(:active).returns(true)
        cell2.stubs(:coordinate).returns('A2')
        cell3 = mock
        cell3.stubs(:active).returns(true)
        cell3.stubs(:coordinate).returns('A3')
        cell4 = mock
        cell4.stubs(:active).returns(false)
        cell4.stubs(:coordinate).returns('B1')
        cell5 = mock
        cell5.stubs(:active).returns(false)
        cell5.stubs(:coordinate).returns('B2')
        cell6 = mock
        cell6.stubs(:active).returns(true)
        cell6.stubs(:coordinate).returns('B3')
        cell7 = mock
        cell7.stubs(:active).returns(true)
        cell7.stubs(:coordinate).returns('C1')
        cell8 = mock
        cell8.stubs(:active).returns(false)
        cell8.stubs(:coordinate).returns('C2')
        cell9 = mock
        cell9.stubs(:active).returns(false)
        cell9.stubs(:coordinate).returns('C3')
        @grid.cells[0].push(cell, cell2, cell3)
        @grid.cells[1].push(cell4, cell5, cell6)
        @grid.cells[2].push(cell7, cell8, cell9)
        expected = "There are 5 active neighbors"
        assert_equal expected, @grid.search_neighbors(cell5)
    end

end