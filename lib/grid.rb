require '../lib/cell'

class Grid
    attr_reader :world, :col1, :col2, :col3
    def initialize
        @world = [@col1= [], @col2= [], @col3= []]
    end

    def generate_cells
        @world.each do |column|
            3.times do
                column << Cell.new
            end
        end
    end

    def count_active_cells
        center = @col2[1]
        counter = 0

        # binding.pry
    end
end