puts "What is the plateau size?"
plateau_size = gets.chomp.scan(/\w+/)

puts "What is the initial position and header for the first rover?"
initial_position_header_1 = gets.chomp.scan(/\w+/)

puts "What are the series of moves for the first rover?"
moves = gets.chomp.scan(/\w+/)

puts "What is the initial position and header for the second rover?"
initial_position_header_2 = gets.chomp.scan(/\w+/)

puts "What are the series of moves for the second rover?"
moves_2 = gets.chomp.scan(/\w+/)

class Rover

attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction
    if initial_position_header_1[0] != x_coordinate || initial_position_header_1[1] != y_coordinate || initial_position_header_1[2] != direction
      move
    else
      turn
    end
  end

end
