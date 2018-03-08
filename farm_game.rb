class Map
  # Creates the map class with 3 arguments
  def initialize(width,length,icon)
    @width = width
    @length = length
    @icon = icon
    @map = Array.new()
    for i in 0..@length
      @map[i] = Array.new(@width,icon)
    end
  end

  def print_map()
    for i in @map
      p i
    end
  end


end


class Player
end

farm = Map.new(10,10,"X")
farm.print_map()














# End of File
