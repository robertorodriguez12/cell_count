require './test_helper'
require '../lib/cell'

class CellTest < MiniTest::Test
    def setup
        @cell = Cell.new('A1')
    end
    def test_it_exists
        assert_instance_of Cell, @cell
    end
    
    def test_it_begins_with_false_active_status
        assert_equal false, @cell.active?
    end

    def test_cell_can_be_activated
        @cell.activate
        assert_equal true, @cell.active?
    end

    def test_cell_coordinate_can_be_rendered
        assert_equal 'A1', @cell.render
    end
end 