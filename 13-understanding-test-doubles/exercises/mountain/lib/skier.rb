module Mountain
  class Skier
    def initialize(trail_map)
      @trail_map = trail_map
    end

    def ski_on(trail_name)
      difficulty = @trail_map.difficulty(trail_name)
      @tired = true if difficulty == :expert
    end

    def tired?
      @tired
    end
  end
end
