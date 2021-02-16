require '../lib/cell'

class Grid
    attr_reader :column1, :column2, :column3
    def initialize
        @column1 = []
        @column2 = []
        @column3 = []
    end
end