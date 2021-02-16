require './test_helper'
require '../lib/cell'

class CellTest < MiniTest::Test
    def test_it_exists
        cell = Cell.new
        assert_instance_of Cell, cell
    end
    
    def test_it_begins_with_false_active_status
        cell = Cell.new 
        assert_equal false, cell.active?
    end
end 