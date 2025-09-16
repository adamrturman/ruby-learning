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
				break
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

def two_sum(nums, target)
	seen = {}

	nums.each_with_index do |num, i|
		diff = target - num
		if seen[diff]
			return [seen[diff], i]
		else
			seen[num] = i
		end
	end
end

def process_message(text)
  print "Processing: '#{text}'"
  
  # The magic happens here - we yield to the block!
  result = yield(text) if block_given?
  
  print "Result: '#{result}'"
  result
end

process_message("hello world") { |b| b.upcase }
# Processing: 'hello world'
# Result: 'HELLO WORLD'

process_message("Ruby is awesome") { |msg| msg.reverse }
# Processing: 'Ruby is awesome'  
# Result: 'emosewa si ybuR'

process_message("secret message") do |msg|
  # Multi-line blocks use do...end
  msg.split('').map { |char| char == 'e' ? '3' : char }.join
end
# Processing: 'secret message'
# Result: 's3cr3t m3ssag3'

process_message("will not crash without a block")

5.times { puts "^"}

print "Loading"
5.times do
  sleep(0.5)
  print "."
end
print " Done!\n"

("a"..."t").each do |char|
	print char
end

("a".."t").each { print _1 }

puts "You gave me #{ARGV.size} #{ARGV.size == 1 ? 'argument' : 'arguments'}"
p ARGV
