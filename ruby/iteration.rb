def block_practice
	puts "before the block"
	name1 = "Ella"
	name2 = "Patrick"
	5.times {yield(name1, name2)}
	puts "after the block"
end

block_practice {|name1, name2| puts "Hi #{name1} and #{name2}"}

def printstatus
	puts "Status message #1"
	name1 = "Ella"
	yield(name1)
	puts "Status message #"
end 

printstatus{|name1| puts "Hi #{name1}"}

 
a =[0,1,1,2,3,5,8,13]
b = {
	"Monday" => 6,
 	"Tuesday" => 7,
	"Wednesday" => 8,
 	"Thursday" => 9,
	"Friday" => 10,
	"Saturday" => 11,
 	"Sunday" => 12
	}

a.each do |i|
 	puts i
end 

a.map! do |i|
	i*2 
end 

puts a 

b.each do |key,value|
	puts "#{key} is the #{value}th of March"

end 
 

a.reject! do |i|
	i == 2 
end 
puts a 

b.reject! do |key,value|
	value == 7 
end 
puts b

a.select! do |i|
	i < 5 
end 
puts a 

b.select! do |key,value|
	value < 8 
end 
puts b 



a.keep_if do |i|
	i < 5 
end 
puts a 

b.keep_if do |key,value|
	value < 8 
end 
puts b 



a2 = a.drop_while do |i|
	i < 5
end

puts a2


b2 = b.drop_while do |key,value|
	value < 8 
end
puts b2.join(" ")