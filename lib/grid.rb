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

    def count_active_neighbors
        center = @col2[1]
        counter = 0
        @world.each do |column|
            column.each do |cell|
                next if cell == center
                if cell.active == true
                    counter += 1
                end 
            end
        end
        p "There are #{counter} active neighbors" 
    end
end