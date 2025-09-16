# Use the array as a stack with 'push' and 'pop'

# Avoid having to quote everything using this syntax
stack = %w[red blue yellow]

stack.push("orange")

stack.push("purple")

p stack # ["red", "blue", "yellow", "orange", "purple"]

removed_element = stack.pop()

p removed_element # "purple"
p stack  # ["red", "blue", "yellow", "orange"]


# Use the array as a queue with 'push' and 'shift'

queue = []

queue.push("Tom")

queue.push("Mary")

queue.push("Susie")


p queue # ["Tom", "Mary", "Susie"]

finished_waiting = queue.shift()  

p finished_waiting  # Tom
p queue # ["Mary", "Susie"]

# If you just need to refer to the first or last (but not remove them), use the eponymous methods

groceries = %w[bread milk eggs cheese]

p groceries # ["bread", "milk", "eggs", "cheese"]

p groceries.first # "bread"
p groceries.last  # "cheese"