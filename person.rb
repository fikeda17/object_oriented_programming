class Person
	def initialize(name)
		@name = name
	end
	def greeting
		puts "Hi my name is #{@name}"
	end
end



class Student < Person
	def learn
		puts "I´ll get it!"
	end
end



class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end
end

Chris = Instructor.new("Chris")
Chris.greeting
Chris.teach

Christina = Student.new("Christina")
Christina.greeting
Christina.learn

Christina.teach
#This can´t occur because Christina is an instance in the class Student
#and the method teach is part of the class Instructor 