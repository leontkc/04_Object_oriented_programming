class Rover

  def initialize (x_location,y_location,direction)
    @x_location = x_location.to_i
    @y_location = y_location.to_i
    @direction = direction.upcase.to_s
  end

  def current_position
    puts "#{@x_location},#{@y_location},#{@direction}"
  end

  def read_instruction (instruction)
    instruction.split(//).each do |x|
      if x == 'M'
        move(x)
      else turn(x)
      end
      puts current_position
    end
  end

  def move(input)
    if @direction == "N"
      @y_location = @y_location + 1
    elsif @direction == "E"
      @x_location = @x_location + 1
    elsif @direction == "S"
      @y_location = @y_location - 1
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


end



puts "What is the plateau size"
  plateau_size = gets.chomp

valid_input = false
  until valid_input == true
    puts "what is the initial position of the first rover?"
    initial_position = gets.chomp.split(" ")
    if initial_position[0].match(/[0-9]/)
      valid_input = true
    else
      valid_input = false
    end
  end


puts "What are the instructions"
  a = gets.chomp

  rover1 = Rover.new(initial_position[0], initial_position[1], initial_position[2])
  rover1.read_instruction(a)
  rover1.current_position

  valid_input = false
  until valid_input == true
    puts "what is the initial position of the second rover?"
    initial_position = gets.chomp.split(" ")
    if initial_position[0].match(/[0-9]/)
      valid_input = true
    else
      valid_input = false
    end
  end

  puts "What are the instructions"
    a = gets.chomp

    rover2 = Rover.new(initial_position[0], initial_position[1], initial_position[2])
    rover2.read_instruction(a)
    rover2.current_position


# leon = Rover.new(1,1,'N')
