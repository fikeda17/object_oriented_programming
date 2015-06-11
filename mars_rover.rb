class Rover
	
	attr_reader :x, :y, :direction

	DIRECTION_VECTORS = { 
		N: [0,1],
		W: [-1,0],
		S: [0,-1],
		E: [1,0]
	}

	def initialize(x, y, direction, width=5, height=5)
		@x = x
		@y = y
		@direction = direction
		@width, @height = width, height
	end

	def move
	case @direction
		when "N"
			@y += 1
		when "S"
			@y -= 1
		when "E"
			@x += 1	
		when "W"
			@x -= 1
	end
	end
	
	def turn_left
      case @direction
        when "N" 
        	@direction = "W"
        when "E" 
        	@direction = "N"
        when "S" 
        	@direction = "E"
        when "W" 
        	@direction = "S"
      end
    end

    def turn_right
      case @direction
        when "N" 
        	@direction = "E"
        when "E" 
        	@direction = "S"
        when "S" 
        	@direction = "W"
        when "W" 
        	@direction = "N"
      end
    end

	def read_instruction(i)
		case i
		when "M"
			move
		when "L"
			turn_left
		when "R"
			turn_right
		end
		puts self
	end

	def to_s
		"<Rover: #{x},#{y} facing #{direction}>"
	end
end


r1 = Rover.new(1, 2, "N", 5, 5)
input = "LMLMLMLMM"
input.each_char {|c| r1.read_instruction(c)}


