# Ruby remembers the order items are added to the hash and those entries can be iterated over in order

person_one = {
  first_name: "Adam",
  last_name: "Turman"
}

# A shorter way of defining hash where the key and value are the same name

first_name = "Kathryn"
last_name = "Turman"

person_two = {
  first_name:,
  last_name:
}

puts person_one, person_two


# Dig method - safe way to access nested information (doesn't raise error if not found)

data = {
  mcu: [{
    name: "Iron Man",
    year: "2010",
    actors: [
      "Robert Downey, Jr.",
      "Gwyneth Paltrow"
    ]
  }]
}

puts data[:mcu][0][:actors][1]  # Gwyneth Paltrow

puts data.dig(:mcu, 0, :actors, 1)  # Gwyneth Paltrow  




