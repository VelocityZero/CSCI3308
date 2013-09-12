###Assignment 2
###Code By: Brian Bauer
###Git Repository: https://github.com/VelocityZero/CSCI3308/tree/master/lab2

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
		@flavor = flavor
	end

	def delicious?
		if "black licorice" == flavor.downcase
			return false;		
		end
		return true
	end
end

class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s       # make sure it's a string
		attr_reader attr_name            # create the attribute's getter
		attr_reader attr_name+"_history" # create bar_history getter
		class_eval "def your code here, use %Q for multiline strings"
	end
end

class Foo
    attr_accessor_with_history :bar
end
