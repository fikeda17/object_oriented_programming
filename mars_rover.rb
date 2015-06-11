class Rover
	POSSIBLE_DIRECTIONS = ["N", "W", "S", "E"]
	MOVE_STEPS = { 
		N: [0, 1],
		W: [-1, 0],
		S: [0, -1],
		E: [1, 0]

	}

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

rover = Rover.new(0, 0, " ")
rover.display



