#!/usr/bin/env ruby
class String				#class creates ability to check for integer or string
	def is_integer?(x)
	x.to_i.to_s == x
	end
end


n = String.new #enables call to class


puts "Do you want to add or multiply?"
operation = gets.chomp.downcase
	unless operation == "add" || operation == "multiply" 	#ensure answer makes sense
		puts "Something is wrong!"
	else
		puts "What number?"
a = gets.chomp
z = n.is_integer?(a) #check whether integer is integer

	if z == false
		puts "Please enter a number"
	else
		a = a.to_i #converts input to integer
	if a == 0
		puts "0"
	else
b = Array.new
	while a > 0 do #loop variable until 0 subtracting one everytime
		b << a
		a -= 1
	end

	if operation == "add"				#determines what equation to use
		c = b.inject{|sum, x| sum + x}
		puts c
	elsif operation == "multiply"
		c = b.inject{|multiply, x| multiply * x}
		puts c
	else 
		puts "Something messed up!"
	end
end
end
end






