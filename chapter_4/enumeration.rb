
# These are equivalent

[1,2,3,4].each { |num| puts num }

# Short hand for referring to the first positional argument 
# And for created a range-array
(1..4).each { puts _1}

# Execute the block
def three_times
  yield
  yield
  yield
end

three_times { puts "What?!"}


def fibonacci_up_to(max)
  # parallel assignment
  first, second = 1, 1

  while first <= max
    # "Do something with this value" as defined by the block
    yield first
    first, second = second, first + second
  end
end

fibonacci_up_to(100) do |num|
  result = num + 1
  puts "The value with one added is #{result}"
end


def uppercase_elements(array)
  array.map { |element| element.upcase}
end

p uppercase_elements(["hi", "thomas"])  #["HI", "THOMAS"]

def only_long_words(words)
  words.map do |word|
    if word.length < 4
      "too short"
    else
      word
    end
  end
end

p only_long_words(["Hi", "Thomas", "the", "Tank", "Engine"])  # ["too short", "Thomas", "too short", "Tank", "Engine"]


# Enumerator

array = [1, 2, 3]

enum = array.to_enum

puts enum.next  # 1
puts enum.next  # 2
puts enum.next  # 3

# Create an enumerator that iterates through lowercase letters a-z
alphabet = ('a'..'z').to_enum

# Loop through and print each letter of the alphabet
# This will terminate after printing 'z' when the enumerator is exhausted
loop do
  puts alphabet.next
end
