def search_array(arr, i)
position = nil
arr2 = []
arr.each do |x|
	position = arr2.length if x == i 
	arr2 << x 
end
puts position
end


arr = [42, 89, 23, 1]
p search_array(arr, 1)

p search_array(arr, 24)


def take_two(arr, i)

	if arr.include?(i)
		counter = 0
		until arr[counter] == i 
			counter += 1
		end
		puts counter
	else
		puts nil
	end
end

arr = [42, 89, 23, 1]
p take_two(arr, 1)

p take_two(arr, 24)

=begin
def binary(arr, i)
	if !arr.include?(i)
		puts nil 
		exit
	end
		mid = arr.length/2
		smaller = arr[0...mid]
		bigger = arr[mid..-1]
		position = 0
	if smaller.include?(i)
		if smaller.length > 4

		else
			arr.each do |x|
			position = arr2.length if x == i 
			arr2 << x 
		end
	else
		position += mid

	end
	puts position		
end
=end


def fibs(num)
	fibs_arr = []

	(0...num).each do |n|
		fibs_arr << n if n < 2
		fibs_arr << fibs_arr[-1] + fibs_arr[-2] if n > 1
	end

	fibs_arr
end

puts fibs(6)


def fibs2(num)
	fibs_arr = [0,1]
	num-2.times {fibs_arr << fibs_arr[-1] + fibs_arr[-2]}
	fibs_arr[0...num]
end

puts fibs2(2)


=begin
	we make a new array
	iterate through existing array
	if new array is blank, first element gets shoveled in as pivtor element
	for each of the next elements, we loop through the new array until we find a value that is bigger than it or we reach the end. 
	if we reach the end, append new element
	if we reach a bigger value then we insert current element before the bigger value
	return sorted array	
=end


def insertion_sort(arr)
	sorted_array = [arr[0]] #create array
	arr.delete_at(0)
		
		# arr.each do |el| #iterate through unsorted array
		# 	# if sorted_array.empty?	
		# 	# 	sorted_array << el 	#add pivot element if empty
		# 	# else 	
		# 		sorted_array.each do |el2| #iterate through sorted array
		# 			sorted_array << el if sorted_array.last <= el #if the current el is bigger than the last sorted el2, we append it
		# 			sorted_array.insert(sorted_array.index(el2)-1, el) if el < el2
		# 		end
		# 	end
	
	i = 0
	while sorted_array.length < arr.length + 1	
		j = 0
		while j < sorted_array.length
			if arr[i] > sorted_array.last
				sorted_array << arr[i]
			elsif arr[i] < sorted_array[j]
				sorted_array.insert(j, arr[i])
				j += 1
			end	
			j += 1
		end
		i += 1
	end

	sorted_array
end

puts insertion_sort([11, 4, 1, 5, 7])

