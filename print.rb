require_relative "product.rb"
#How to be able to add user input into the array for later print 

class Goods
	def initialize
		@products = []
	end

	def print_main_menu
		puts "[1] Add a product"
		puts "[2] Print"
		puts "[3] Exit"
	end

	def main_menu
	   while true
		print_main_menu
		
		print "Select an option:"
		input = gets.chomp.to_i

		choose_option(input)
	   end 
	end

	def choose_option(choice)
		case choice
		when 1 then add_product
		when 2 then print_invoice
		when 3 
			puts "Goodbye"
			exit
		else
			puts "I don´t know what to do!"
		end
	end

	def add_product
		puts "What are you buying?"
	  	product_name = gets.chomp
		puts "What is this product´s category?"
		product_category = gets.chomp
		puts "What´s the product´s price?"
		price = gets.chomp.to_i
		product = Product.new(product_name, product_category, price)
		@products << product
	
	end

	def print_invoice
		sum = 0
		@products.each do |x|
			x.importtax
			x.salestax
			puts "#{x.product_name}´s  => final price: $#{x.price}"
			sum+=x.price 
		end
	puts "Total new price = $#{sum}"

	end
end
#How to maintain the same price
input_list = Goods.new
input_list.main_menu

