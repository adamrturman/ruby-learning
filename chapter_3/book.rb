class BookInStock
  # creates getter methods for these instance variables
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    (@price * 100).round
  end

  def price_in_cents=(cents)
    @price = cents / 100
  end  

  def to_s 
    "ISBN #{@isbn}, price #{price}"
  end
end

my_book = BookInStock.new("blub", "10")

# Difference between the native and overriden to string methods
p my_book
puts my_book 
puts my_book.isbn

puts my_book.price_in_cents