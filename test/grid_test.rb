require './test_helper'
require 'mocha/minitest'
require '../lib/grid'

class GridTest < MiniTest::Test 
    def setup
        @grid = Grid.new
    end 

    def test_it_exists
        assert_instance_of Grid, @grid
    end

    def test_grid_begins_with_no_cells
        assert_equal 0, @grid.column1.length
        assert_equal 0, @grid.column2.length
        assert_equal 0, @grid.column3.length
    end

    def test_cells_are_generated_once_command_is_given
        @grid.generate_cells
        assert_equal 3, @grid.column1.length
        assert_equal 3, @grid.column2.length
        assert_equal 3, @grid.column3.length
    end

    def test_center_cell_is_set
        expected = @grid.column2[1]
        assert_equal expected, @grid.center_cell
    end

    # I am using mocks / stubs here for the cells active status to determine if count method works
    def test_grid_can_count_active_cells
        # grid = Grid.new

    end
end