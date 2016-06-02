class Cat
  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 11
      "#{@meal_time} AM"
    else
      "#{@meal_time - 12} PM"
    end
  end

  def meow
    puts "My name is #{@name} and I like to eat #{preferred_food} at #{eats_at}"
  end

end

leon = Cat.new('leon','steak',13)
melissa = Cat.new('Melmo','sushi',12)
