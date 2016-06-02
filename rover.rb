class Rover

  def initialize (x_location,y_location,direction)
    @x_location = x_location
    @y_location = y_location
    @direction = direction
  end

  def current_position
    "#{@x_location},#{@y_location},#{@direction}"
  end

  # def read_instruction (instruction)
  #   instruction = instruction.split(//)
  #   instruction.each do |x|
  #     if x == 'M'
  #       call move()
  #
  #
  # end

  def move(input)
    @x_location = @x_location + 1
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
