###Assignment 2
###Code By: Brian Bauer
###Git Repository: https://github.com/VelocityZero/CSCI3308/tree/master/lab2

##PART 1##
#Dessert Class
class Dessert
	def initialize(name, calories)
		@name = name.capitalize
		@calories = calories
	end

	def healthy?
		return @calories < 200
	end
	
	def delicious?
		return true	
	end
end

#Jellybean Class, Extension of Dessert
class JellyBean < Dessert
	def initialize(name, calories, flavor)
		@name = name.capitalize
		@calories = calories
		@flavor = flavor
	end

	def delicious?
		if "black licorice" == @flavor.downcase
			return false
		else 
			return true
		end
	end
end

#Test#
puts "PART 1 - Classes"
black = JellyBean.new('Jelly Bean', 400, 'black licorice')
yellow = JellyBean.new('Jelly Bean', 100, 'idk')
cake = Dessert.new('black licorice', 200)
puts black.healthy?
puts black.delicious?
puts yellow.delicious?
puts cake.healthy?
puts cake.delicious?
puts "\n"

##PART 2##

class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s       # make sure it's a string
		attr_reader attr_name            # create the attribute's getter
		attr_reader attr_name+"_history" # create bar_history getter
		class_eval %Q'
			def #{attr_name}=(x);
				@#{attr_name}_history = Array.new(1,@#{attr_name}) if (!defined?(@#{attr_name}_history));
				@#{attr_name}_history.push(x);
			end'
	end
end

#Test#
class Foo
    attr_accessor_with_history :bar
end
puts "PART 2 - Object Oriented Programming".upcase
f = Foo.new
f.bar = 1
f.bar = 2
f = Foo.new
p f.bar = 4
p f.bar_history
puts "\n"

##PART 3##

#Modifies numeric class to include the ability for currency conversions
class Numeric
	@@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
	def method_missing(method_id, *args)
		singular_currency = method_id.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			 self * @@currencies[singular_currency]
			else
			 super
		end
	end
	def in(new_currency)
		new_currency = new_currency.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(new_currency.to_s)
			self / @@currencies[new_currency.to_s] 
		else
			super
		end
	end
end

def palindrome?(string)
	temp = string.downcase.gsub(/\W/, '')
	return temp.eql? temp.reverse
end

class String
	def method_missing(method_id, *args)
		palindrome?(self) if method_id.to_s == "palindrome?"	
	end
end

module Enumerable
	def method_missing(method_id, *args)
		palindrome?(self.to_s) if method_id.to_s == "palindrome?"	
	end
end


#Test#
puts "PART 3 - More OOP"
puts "10 rupees in euro = " + 10.rupees.in(:euro).to_s
puts "0.14705882352941177 euros in rupees = " + 0.14705882352941177.euros.in(:rupees).to_s
puts "1 dollar in rupees = " + 1.dollar.in(:rupees).to_s
puts "racecar.palindrome? = " + "racecar".palindrome?.to_s
puts "[1,2,3,2,1].palindrome? = " + [1,2,3,2,1].palindrome?.to_s
puts "\n"

##PART 4##
class CartesianProduct
    include Enumerable
    def initialize(xs, ys)
		@catProduct = xs.product ys
	end
	def each
		@catProduct.each {|c| yield c}
	end
end

#Test#
puts "PART4 - Cartesian Product"
c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
