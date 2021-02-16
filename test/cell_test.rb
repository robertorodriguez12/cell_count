require './test_helper'
require '../lib/cell'

class CellTest < MiniTest::Test
    def setup
        @cell = Cell.new('A1')
    end
    def test_it_exists
        assert_instance_of Cell, @cell
    end
    
    def test_it_begins_with_random_active_status
        expected = [true, false] 
        assert_includes expected, @cell.active?
    end

    def test_cell_coordinate_can_be_rendered
        assert_equal 'A1', @cell.render
    end
end 