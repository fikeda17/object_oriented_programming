class Rover
	def initialize(x_coordinate, y_coordinate, direction)
		@x_coordinate = x_coordinate
		@y_coordinate = y_coordinate
		@direction = direction
	end
	
	def read_instruction
	end
	
	def move(mov)
	end
	
	def turn
	end

	def display 
		puts "#{@x_coordinate}, #{@y_coordinate}, #{@direction}"
	end
end

rover = Rover.new(1, 2, "N")
rover.display

