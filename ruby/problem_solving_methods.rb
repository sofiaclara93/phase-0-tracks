numbers = [2, 5, 13, 23, 50]
def search_array(arr, num)
	counter = 0
	arr.each do |item|
		if item == num
			puts counter
			counter += 1
		else counter += 1
		end
	end
end
#search_array(numbers, 50)

def fibo(times)
	counter = 2
	numbers = [0, 1]
	while counter < times 
		numbers << numbers[-1] + numbers[-2]
		counter += 1
	end
	p numbers	
end
#fibo(6)
#fibo(100)

##############################
#create an array
array = [12, 88, 2, 14, 54, 105, 17]
#compare first two indexes and compare the values
def bubble_sort(array)
	index = array.length - 1
	loop do 
		sorted = false
		index.times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				sorted = true
			end
		end
		break if not sorted
	end 
	array
end

p bubble_sort(array)

#if value of index 0 > value of index 1, then swap
	
#otherwise just leave them alone
#move onto value of index 1 and value of index 2 and repeat
#keep looping until all values are less than the next index value
#once array index = -1, start again at index 0 and 1
#
