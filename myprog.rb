def say_hello_goodbye(name)
	"Hello #{name.upcase} and goodbye"
end

def fizzbuzz(start, ending)
	range = (start..ending)
	range.each do |i|
		if i % 15 == 0
			puts "Fizzbuzz"
		elsif i % 5 == 0
			puts "Buzz"
		elsif i % 3 == 0
			puts "Fizz"
		else
			puts i
		end
	end
end

# fizzbuzz(1, 150)

def contains_duplicate(nums)
	answer = false
	hash = {}

	if nums.length > 0
		nums.each do |i|
			if hash[i]
				answer = true
			else
				hash[i] = "blub"
			end
		end
	end
	 puts answer
end

contains_duplicate([1,2,3])
contains_duplicate([1,2,3,3])
contains_duplicate([])