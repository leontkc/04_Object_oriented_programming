class Rover

  def initialize (x_location,y_location,direction)
    @x_location = x_location
    @y_location = y_location
    @direction = direction.upcase
  end

  def current_position
    "#{@x_location},#{@y_location},#{@direction}"
  end

  def read_instruction (instruction)
    instruction.split(//).each do |x|
      if x == 'M'
        move(x)
      else turn(x)
      end
      #puts current_position
    end
  end

  def move(input)
    if @direction == "N"
      @y_location = @y_location + 1
    elsif @direction == "E"
      @x_location = @x_location + 1
    elsif @direction == "S"
      @x_location = @x_location - 1
    else @direction == "W"
      @x_location = @x_location - 1
    end
  end

  def turn(input)
    if input.upcase == 'L'
      if @direction == 'N'
        @direction = 'W'
      elsif @direction == 'E'
        @direction = 'N'
      elsif @direction == 'S'
        @direction = 'E'
      else @direction == 'W'
        @direction = 'S'
      end
    else
      if @direction == 'N'
        @direction = 'E'
      elsif @direction == 'E'
        @direction = 'S'
      elsif @direction == 'S'
        @direction = 'W'
      else @direction == 'W'
        @direction = 'N'
      end
    end
  end



#


end

# leon = Rover.new(1,1,'N')
