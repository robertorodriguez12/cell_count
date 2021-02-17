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

    def test_game_can_count_active_neighbors
        grid = mock
        grid.stubs(:cells).returns([[], [], []])
        cell = mock
        cell.stubs(:active).returns(true)
        cell2 = mock
        cell2.stubs(:active).returns(true)
        cell3 = mock
        cell3.stubs(:active).returns(true)
        cell4 = mock
        cell4.stubs(:active).returns(false)
        cell5 = mock
        cell5.stubs(:active).returns(false)
        cell6 = mock
        cell6.stubs(:active).returns(true)
        cell7 = mock
        cell7.stubs(:active).returns(true)
        cell8 = mock
        cell8.stubs(:active).returns(false)
        cell9 = mock
        cell9.stubs(:active).returns(false)
        grid[0].push(cell, cell2, cell3)
        grid[1].push(cell4, cell5, cell6)
        grid[2].push(cell7, cell8, cell9)
        expected = "There are 5 active neighbors"
        assert_equal expected, grid.search_neighbors
    end

end