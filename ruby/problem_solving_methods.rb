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


