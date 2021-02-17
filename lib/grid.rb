require '../lib/cell'
require 'pry'
require 'matrix'

class Grid
    attr_reader :cells
    def initialize
        @cells = [[], [], []]
    end

    def generate_cells
        numbers = ['1', '2', '3']
        @cells[0] = []
        @cells[1] = []
        @cells[2] = []
        numbers.each do |number|
            @cells[0] << Cell.new('A' + number)
            @cells[1] << Cell.new('B' + number)
            @cells[2] << Cell.new('C' + number)
        end 
    end

    def search_neighbors(cell)
        counter = 0
        index = Matrix[*cells].index(cell)
        starting_row = @cells[index[0]]
        min_x = false
        max_x = false
        min_y = false
        max_y = false
        # left / right search
        if index[0] != 0
            counter += 1 if starting_row[index[0]- 1].active == true
        else 
            min_x = true
        end
        
        # binding.pry
        if starting_row[index[0] + 1].nil? == false
            counter += 1 if starting_row[index[0]+ 1].active == true 
        else
            max_x = true 
        end
        
        # up / down search
        if index[1] != 0
            counter += 1 if @cells[index[0]][index[1] - 1].active == true
        else
            min_y = true  
        end
        
        if @cells[index[1]][index[1] + 1].nil? == false
            counter += 1 if @cells[index[0]][index[1] + 1].active == true
        else
            max_y = true  
        end
        
        # up right search @cells[index[0] + 1][index[1] - 1].nil? == false ||
        if  max_x != true && min_y != true
            counter += 1 if @cells[index[0] + 1][index[1] - 1].active == true  
        end
               
        # up left
        if min_x != true && min_y != true
            counter += 1 if @cells[index[0] - 1][index[1] - 1].active == true  
        end

        # down left search
        if min_x != true && max_y != true
            counter += 1 if @cells[index[0] - 1][index[1] + 1].active == true  
        end

        # down right
        if max_x != true && max_y != true
            counter += 1 if @cells[index[0] + 1][index[1] + 1].active == true  
        end
        p "There are #{counter} active neighbors"
    end
end