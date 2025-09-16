
# Reverse-engineering of the tally method
def count_word_frequency(word_list)
  # the default value for all new entries will be 0
  count = Hash.new(0)

  word_list.each do |word|
    count[word] += 1
  end

 count
end

counts = count_word_frequency(["once", "twice", "twice", "thrice", "thrice", "thrice"])

# check the key-value pairs and sort numerically
numerically_sorted = counts.sort_by { |word, count| count }

# or alphabetically
alphabetically_sorted = counts.sort_by { |word, count| word }
 

p counts  # {"once"=>1, "twice"=>2, "thrice"=>3}
p numerically_sorted  # [["once", 1], ["twice", 2], ["thrice", 3]]
p alphabetically_sorted # [["once", 1], ["thrice", 3], ["twice", 2]]
