class Container
  # Refactor 2
  attr_accessor :volume, :color, :name

  def initialize volume, color, name = "Water Bottle"
    @volume = volume
    @color = color
    @name = name
  end

  # Refactor 1
  # attr_writer :volume
  # attr_reader :volume

  # Starting reader and writer methods
  # def volume
  #   @volume
  # end

  # def volume= volume
  #   @volume = volume
  # end

end