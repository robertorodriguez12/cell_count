require '../lib/cell'
require 'pry'

class Grid
    attr_reader :cells
    def initialize
        @cells = {}
        generate_cells
    end

    def generate_cells
        letters = ['A', 'B', 'C']
        numbers = ['1', '2', '3']
        letters.each do |letter|
            numbers.each do |number|
                @cells[letter+number] = Cell.new(letter + number)
            end 
        end 
    end

    def valid_selection(key)
        @cells.has_key?(key)
    end
   

end