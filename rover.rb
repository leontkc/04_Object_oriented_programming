class Rover

  def initialize (x_location,y_location,direction)
    @x_location = x_location
    @y_location = y_location
    @direction = direction
  end

  def read_instruction (instruction)
    if instruction = "L"
      puts "turn left"
    elsif instruction = "R"
      puts "turn right"
    else  instruction = "M"
      puts "move"
  end

def move
end

def turn
end

end
