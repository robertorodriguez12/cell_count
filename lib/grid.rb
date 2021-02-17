require '../lib/cell'
require 'pry'

class Grid
    attr_reader :cells
    def initialize
        @cells = Array.new(3)
        generate_cells
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
end