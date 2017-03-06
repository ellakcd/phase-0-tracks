puts "how many employees will be processed?"
number = gets.chomp.to_i


number.times do 
puts "What is your name?"
name = gets.chomp
puts "How old are you? What year were you born?"
age = gets.chomp
puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp
condition = "Results inconclusive"
if age && garlic == "yes" || health == "yes"
	condition = "Probably not a vampire"
elsif !age && garlic == "no" || health == "no"
	condition = "Probably a vampire"
elsif !age && garlic == "no" && health == "no"
	condition = "Almost certainly a vampire"
elsif name == "Drake Cula" || name == "Tu Fang"
	condition = "Definitely a vampire"
else 
	condition == "Results inconclusive"
end

puts condition
end