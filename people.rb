class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{ name }."
  end

end

class Student < Person
  def initialize(name)
    super(name)
  end

  def learn
    "I get it!"
  end
end

class Instructor < Person
  def initialize(name)
    super(name)
  end

  def teach
    "Everything in Ruby is an Object."
  end
end

chris = Instructor.new("Chris")
puts chris.greeting

cristina = Student.new("Cristina")
puts cristina.greeting

puts chris.teach
puts cristina.learn

# will not be able to call teach method on student instance since
# the teach method is local to the class Instructor
