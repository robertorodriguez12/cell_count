class Cell
    attr_reader :active 
    def initialize
        @active = [true, false].sample
    end

    def active?
        @active
    end
end