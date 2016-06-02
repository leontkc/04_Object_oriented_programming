class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
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

Chris = Instructor.new('Chris')
Chris.greeting

Cristina = Student.new('Cristina')
Cristina.greeting

Chris.teach
Cristina.learn

Cristina.teach
#teach is a method in the teacher class, cristina is not in this class.
