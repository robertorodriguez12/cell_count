require './test_helper'
require 'mocha/minitest'
require '../lib/grid'

class GridTest < MiniTest::Test 
    def setup
        @grid = Grid.new
        @cell = mock
        @cell.stubs(:active).returns(true)
        @cell2 = mock
        @cell2.stubs(:active).returns(true)
        @cell3 = mock
        @cell3.stubs(:active).returns(true)
        @cell4 = mock
        @cell4.stubs(:active).returns(false)
        @cell5 = mock
        @cell5.stubs(:active).returns(false)
        @cell6 = mock
        @cell6.stubs(:active).returns(true)
        @cell7 = mock
        @cell7.stubs(:active).returns(true)
        @cell8 = mock
        @cell8.stubs(:active).returns(false)
        @cell9 = mock
        @cell9.stubs(:active).returns(false)
    end 

    def test_it_exists
        assert_instance_of Grid, @grid
    end

    def test_grid_begins_with_no_cells
        assert_equal 0, @grid.col1.length
        assert_equal 0, @grid.col2.length
        assert_equal 0, @grid.col3.length
    end

    def test_cells_can_be_generated
        @grid.generate_cells
        assert_equal 3, @grid.col1.length
        assert_equal 3, @grid.col2.length
        assert_equal 3, @grid.col3.length
    end

    # I am using mocks / stubs here for the cells active status to determine if count method works
    def test_grid_can_count_active_cells
        @grid.col1.push(@cell, @cell2, @cell3)
        @grid.col2.push(@cell4, @cell5, @cell6)
        @grid.col3.push(@cell7, @cell8, @cell9)
        expected = "There are 5 active neighbors"
        assert_equal expected, @grid.count_active_neighbors
    end

    # look into making a 2 dimensional array (x, y)
    # ask them if they want user input for the bonus area
end