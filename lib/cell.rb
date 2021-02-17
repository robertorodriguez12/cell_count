class Cell
    attr_reader :active 
    def initialize(coordinate)
        @coordinate = coordinate
        @active = nil
        activate
    end
    
    def activate
        @active = [true, false].sample
    end

    def active?
        @active
    end

    def render 
        return @coordinate
    end 
end