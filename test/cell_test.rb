require './test_helper'
require '../lib/cell'

class CellTest < MiniTest::Test
    def test_it_exists
        cell = Cell.new
        assert_instance_of Cell, cell
    end
    
    def test_it_begins_with_random_active_status
        cell = Cell.new
        expected = [true, false] 
        assert_includes expected, cell.active?
    end
end 