class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

end

fuzzy = Cat.new('fuzzy', 'fish', 2)
stripes = Cat.new('stripes', 'mice', 10)
