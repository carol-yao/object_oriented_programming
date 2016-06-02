puts "What is the plateau size?"
plateau_size = gets.chomp

puts "What is the initial position and header for the first rover?"
initial_position_header_1 = gets.chomp

puts "What are the series of moves for the first rover?"
moves = gets.chomp

puts "What is the initial position and header for the second rover?"
initial_position_header_2 = gets.chomp

puts "What are the series of moves for the second rover?"
moves_2 = gets.chomp

class Rover

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instruction)
  end

end
