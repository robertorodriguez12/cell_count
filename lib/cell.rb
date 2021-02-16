class Cell
    attr_reader :active 
    def initialize(coordinate)
        @coordinate = coordinate
        @active = false
    end
    
    def activate
        @active = true
    end

    def active?
        @active
    end

    def render 
        return @coordinate
    end 
end