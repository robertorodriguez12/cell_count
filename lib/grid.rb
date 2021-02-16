require '../lib/cell'

class Grid
    attr_reader :column1, :column2, :column3
    def initialize
        @column1 = []
        @column2 = []
        @column3 = []
        generate_cells
    end

    def generate_cells
        3.times do
            @column1 << Cell.new
            @column2 << Cell.new
            @column3 << Cell.new
        end
    end
end