
class Goods
	def initialize(product, product_category, price)
		@product = product
		@product_category = product_category
		@price = price
	end
	def Salestax(product_category)
		if product_category == "books" 
			puts "No sales tax"

		elsif product_category == "food"
			puts "No sales tax"

		elsif product_category == "medical products"
			puts "No sales tax"

		else
			puts "Sales tax is $#{price.to_f * 0.10}"
		end
	end

	def 
end

puts "What are you buying?"
product = gets.chomp
puts "What is this product´s category?"
product_category = gets.chomp
puts "What´s the product´s price?"
price = gets.chomp
