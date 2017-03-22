# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split input string into array
  # initialize empty hash
  # iterate through array and each el is a key for hash.  
  # IF already in hash, increment associated value.  
  # Otherwise, add it to hash w defaul value = 1
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
  # feed the output as input into the print method to print it nicely 
# output: [what data type goes here, array or hash?] HASH


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add a new key to the hash with the optional quanitity as new value
# IF already in hash, increment associated value.  
# Otherwise, add it to hash w defaul value = 1
# IF no quantity, default = 1
# output: hash with new item included 


# Method to remove an item from the list
# input: list, key (item name)
# steps: delete the key and it will automatically delete the corresponding value
# output: hash with item removed 


# Method to update the quantity of an item
# input: list, key (item name), quantity
# steps: identify that key and reassign its value
# output: hash 


# Method to print a list and make it look pretty
# input: list
# steps: iterate through each key and have it print out the key and the corresponding value 
# format into two columns
# output: string

def create_list(string)
	items = string.split(" ")
	list = {}
	items.each do |key|
		if list.keys.include?(key)
			list[key] += 1
		else 
			list[key] = 1
		end
	end
	list
	#make it look pretty
end

initial_list = create_list("apple banana apple berry melon")

def add_item(list, item, quantity = 1)
	if list.keys.include?(item)
		list[item] += quantity
	else
		list[item] = quantity 
	end
	list
end

new_list = add_item(initial_list, "banana", 2)

def remove_item(list, item)
	list.delete(item)
	list
end

deleted_list = remove_item(new_list, "apple")


def update_quantity(list, item, quantity)
	list[item] = quantity
	list
end

final_list = update_quantity(deleted_list, "banana", 70)


def print_list(list)
	list.each do |k, v|
		puts "#{k}: #{v}"
	end
end

print_list(initial_list)

puts initial_list









