require '../lib/grid'

class Game
    attr_reader :grid, :start, :user_choice
    def initialize
        @grid = Grid.new
        @start = false
        @user_choice = ''
        @chosen_cell = []
        # @grid.find_cell(@user_choice)
    end

    def chosen_cell
        puts 'Welcome to Count My Neighbor'
        puts 'Select your starting cell from the following options:'
        puts 'A1, A2, A3'
        puts 'B1, B2, B3'
        puts 'C1, C2, C3'
        print '> '
        @user_choice = gets.chomp.upcase
    end

    def find_cell(choice)
        @grid.cells.each do |row|
            row.each do |cell|
                if cell.coordinate == choice
                    @chosen_cell << cell
                end
            end 
        end
        @chosen_cell
    end
end