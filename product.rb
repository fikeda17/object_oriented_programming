class Product
	attr_accessor :product_name, :product_category, :price 

	def initialize(product_name, product_category, price)
		@product_name = product_name
		@product_category = product_category
		@price = price
	end

	def importtax
		if @product_name.include?("imported")
			@price = @price * 1.05
		end
	end

	def salestax
		case @product_category
		when "books" then @price = @price
		when "food" then @price = @price
		when "medical product" then @price = @price
		else 
			@price = @price * 1.10
		end
	end

end