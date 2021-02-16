require '../lib/cell'
require 'pry'

class Grid
    attr_reader :world, :col1, :col2, :col3
    def initialize
        @world = Array.new(3)
    end

    def generate_cells
        @world[0] = Array.new(3, Cell.new)
        @world[1] = Array.new(3, Cell.new)
        @world[2] = Array.new(3, Cell.new)
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

    def start
        generate_cells
        puts 'Welcome to Count My Neighbors'
        puts 'Rules: You have a 3x3 grid, select a cell to count its active neighbors!'
        puts 'Cells: A = top left, B = top middle, C = top right, D = middle left, E = center, F = middle right, G = bottom left, H = bottom middle, I = bottom right'
        puts 'Enter the letter of the cell you wish to begin with'
        print "> "
        answer = gets.chomp.upcase
    end 
end