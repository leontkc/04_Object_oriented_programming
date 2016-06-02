class Person
  attr_accessor :name

  def initializer(name)
    @name = name
  end

  def Greeting
    "Hi, my name is #{name}"
  end

end

class Student < Person
  def learn
    "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end
