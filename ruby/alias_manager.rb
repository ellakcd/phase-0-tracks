# =begin
# 	first, split the name into an array and then reverse the array
# 	next create a vowels and a consonants reference arrays
# 	next iterate through each letter and IF it is a vowel, replace it w the next vowel, and IF it is a consonant replace it with next consonant
# 	join it back into a string
# =end


def reverse(name)
	name_arr = name.split(" ")
	caps = name_arr.each do |word|
		word.capitalize! 
	end.reverse.join(" ")
end

def next_vowel(vowel)
	vowels = "aeiou"
	i = vowels.index(vowel)
	i2 = (i + 1) % 5
	vowels[i2]
end

def next_cons(cons)
	consonants = "bcdfghjklmnpqrstvwxyz"
	i = consonants.index(cons)
	i2 = (i + 1) % 21
	consonants[i2]
end


def code_name(name)
	encoded = ""

	name.each_char do |char|
		char = char.downcase
		if char == " " 
			encoded += " "
		elsif "aeiou".include?(char) 
			encoded += next_vowel(char)
		elsif "bcdfghjklmnpqrstvwxyz".include?(char) 
			encoded += next_cons(char)
		else 
			encoded += "NOT VALID"
		end
	end
	reverse(encoded)
end

aliases = {}

while true do 
puts "What name do you need to encode?(or quit)"
name = gets.chomp
break if name == "quit"
aliases[name] = code_name(name)
puts code_name(name)
end

aliases.each do |k, v|
	puts "#{v} is actually #{k}"
end










