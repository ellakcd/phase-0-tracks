puts "how many employees will be processed?"
number = gets.chomp.to_i


number.times do 

condition = "Results inconclusive"

bool = true
while bool == true do 
puts "Please list your allergies"
allergies = gets.chomp
	if allergies == "sunshine"
		condition = "Probably a vampire"
		bool = false
	elsif allergies == "done"
		bool = false
		puts "What is your name?"
		name = gets.chomp
		puts "How old are you? What year were you born?"
		age = gets.chomp
		puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
		garlic = gets.chomp
		puts "Would you like to enroll in the company's health insurance?"
		health = gets.chomp


		condition = "Probably not a vampire" if age && garlic == "yes" || health == "yes"
		condition = "Probably a vampire" if !age && garlic == "no" || health == "no"
		condition = "Almost certainly a vampire" if !age && garlic == "no" && health == "no"
		condition = "Definitely a vampire" if name == "Drake Cula" || name == "Tu Fang"
	end
	puts condition
end		
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."