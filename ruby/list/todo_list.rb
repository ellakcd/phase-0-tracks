class TodoList 

	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(index)
		@list[index]
	end

end



# Rspec tests use describe blocks to create grouping of tests.  Within these blocks, you can put more groupings of tests or subgroups.  
# Let is a way of creating an example to test all your methods on. The test cases don't change it.  
# It blocks include a string that describes in plain english what the method is supposed to do.  
# Inside the it blocks, you use expect with example code and to eq with the expected answer 
# The test passes it the expected and actual answers match.  Otherwise it fails. 



