###LAB2
###Coded By: Brian Bauer

#Part1: Hellow World
class HelloWorldClass
	def initialize(name)
		@name = name.capitalize
	end
	def sayHi
		puts "Hello #{@name}!"
	end
end
#Part 1 Test
puts "***Hellow World Class***".upcase
hello = HelloWorldClass.new("Brian")
hello.sayHi
puts ""

#Part 2: Palindrome, checks if phrase or statement is the same backwards
def palindrome?(string)
	temp = string.downcase.gsub(/\W/, '')
	out = temp.eql? temp.reverse
	puts "Input: " + string
	puts "output: " + out.to_s
	puts ""
end
def count_words(string)
	temp = string.downcase.gsub(/\W/, ' ').split
	words = Hash.new
    temp.each do |word|
			if words.has_key?(word)
				words[word] += 1;
			else
				words[word] = 1;
			end
		end
	puts "Input:" + string
	puts "Output: " + words.to_s
	puts ""
end

#Part 2 Test
puts "***Palindrome***".upcase
palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")
puts "***Count Words***".upcase
count_words("A man, a plan, a canal -- Panama")
count_words "Doo bee doo bee doo"

#Part 3: Rock Paper Scissors
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	def winner(a1,a2)
		check = a1[1] + a2[1]
		case check.upcase
			when "PR"
				return a1
			when "SP"
				return a1
			when "RS"
				return a1
			when "RP"
				return a2
			when "PS"
				return a2
			when "SR"
				return a2
			when "RR", "PP", "SS"
				return a1
			end
		raise NoSuchStrategyError
	end
	def tournament(ary)
		if ary[0][0].is_a?(Array)
			l = tournament(ary[0]);
			r = tournament(ary[1]);
		else 
			l = ary[0];
			r = ary[1];
		end
		return winner(l,r);
	end
	raise WrongNumberofPlayersError unless game.length == 2
	puts "Our winner is: " +tournament(game)[0]
end

#Part3 Test
puts "***Rock Paper Scissors Game***".upcase
rps_game_winner([
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
])
puts ""

#Part4
def combine_anagrams(words)
		out = Hash.new();
    words.each do |word|
			temp = word.downcase.split("").sort.join
			if out.include?(temp)
				out[temp].push(word);
			else
				out[temp] = [word]
			end
		end
	puts "Input: " + words.to_s;
	puts "Output: "+ out.values.to_s;
end

#Part4 Test
puts "***Combine Anagrams***".upcase
combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
