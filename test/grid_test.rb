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

    def test_grid_begins_with_attributes
        # this is testing that the grid begins with an array with 3 rows
        expected = [nil, nil, nil]
        assert_equal expected, @grid.world
    end

    def test_cells_can_be_generated
        @grid.generate_cells
        assert_equal 3, @grid.world[0].length
        assert_equal 3, @grid.world[1].length
        assert_equal 3, @grid.world[2].length
    end

    # I am using mocks / stubs here for the cells active status to determine if count method works
    def test_grid_can_count_active_cells
        @grid.world[0] = Array.new.push(@cell, @cell2, @cell3)
        @grid.world[1] = Array.new.push(@cell4, @cell5, @cell6)
        @grid.world[2] = Array.new.push(@cell7, @cell8, @cell9)
        expected = "There are 5 active neighbors"
        assert_equal expected, @grid.count_active_neighbors
    end
end