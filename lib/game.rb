require '../lib/grid'

class Game
    attr_reader :grid, :start, :user_choice
    def initialize
        @grid = Grid.new
        @grid.generate_cells
        @user_input = ''
        @selected_cell = nil
        user_prompt
        find_cell(@user_input)
        @grid.search_neighbors(@selected_cell)
    end

    def user_prompt
        puts 'Welcome to Count My Neighbor'
        puts 'Select your starting cell from the following options:'
        puts 'A1, A2, A3'
        puts 'B1, B2, B3'
        puts 'C1, C2, C3'
        print '> '
        @user_input = gets.chomp.upcase
    end

    def find_cell(choice)
        @grid.cells.each do |row|
            row.each do |cell|
                if cell.coordinate == choice
                    @selected_cell = cell
                end
            end 
        end
        @selected_cell
    end
end