=begin
create an empty hash for client details
prompt the user for all the info
convert info to correct data type and then set data as value for key based on the question
print hash once it is complete
prompt user to ask if they have any updates
if they don't, print it again
if they do, update the key with new value and print
=end



client_details = {}


puts "what's your name?"
client_details[:name] = gets.chomp

puts "how old are you?"
client_details[:age]  = gets.chomp.to_i

puts "how many children do you have?"
client_details[:children]  = gets.chomp.to_i

puts "what theme would you like for the decor?"
client_details[:theme] = gets.chomp

puts "do you have experience?(yes/no)"
client_details[:experience]  = false
client_details[:experience]  = true if gets.chomp == "yes"

puts client_details

puts "do you want to update a key?(key name/none)"
update = gets.chomp
if update == "none"
	puts client_details
else
	key = update.to_sym
	puts "what is the new value for #{update}?"
	val = gets.chomp
	client_details[key] = val
	puts client_details
end





