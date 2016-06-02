class Cat

  attr_reader :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time < 12
      "#{ meal_time } AM"
    elsif meal_time == 12
      "#{ meal_time } PM"
    else
      "#{ meal_time - 12} PM"
    end
  end

  def meow
    "My name is #{name} and I eat #{preferred_food} at #{eats_at}."
  end
end

fuzzy = Cat.new('Fuzzy', 'fish', 2)
stripes = Cat.new('Stripes', 'mice', 10)

puts fuzzy.meow
puts stripes.meow
