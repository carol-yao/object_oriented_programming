class Rover

attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instructions)
    instructions.each do |i|
      if i = "L" || "R"
        turn
      elsif i = "M"
        move
      end
    end
  end

  def move
    if direction == "N"
      @y_coordinate += 1
    elsif direction == "S"
      @y_coordinate -= 1
    elsif direction == "E"
      @x_coordinate += 1
    elsif direction == "W"
      @x_coordinate -= 1
    else
      "invalid direction given"
    end
  end

  def turn(input)
    if (direction == "W" && input == "R") || (direction == "E" && input == "L")
      direction == "N"
    elsif (direction == "N" && input == "R") || (direction == "S" && input == "L")
      direction == "E"
    elsif (direction == "E" && input == "R") || (direction == "W" && input == "L")
      direction == "S"
    elsif (direction == "S" && input == "R") || (direction == "N" && input == "L")
      direction == "W"
    else
      "invalid input"
    end
  end
end


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

rover_1 = Rover.new(initial_position_header_1[0], initial_position_header_1[1], initial_position_header_1[2])
puts rover_1.x_coordinate
puts rover_1.y_coordinate
puts rover_1.direction
